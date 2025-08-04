import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:mentore_app/ApiEndpoints/apis.dart';

import 'package:mentore_app/services/token_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GoogleSignInService {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['email', 'profile'],
    serverClientId:

        '184745367937-jr8vkjmb1mq3f3i5t94t4mccftvob5e5.apps.googleusercontent.com',

     
        signInOption: SignInOption.standard, // optional
  hostedDomain: "", // optional

  );

  final TokenStorageService _tokenStorage = TokenStorageService();

  Future<Map<String, String>?> signInWithGoogle(BuildContext context) async {
    try {
      print("Starting Google sign-in...");

      await _googleSignIn.signOut();
      final GoogleSignInAccount? account = await _googleSignIn.signIn();
      print("SignIn returned: $account");

      if (account == null) {
        print("User cancelled sign-in");
        return null; // Returning null for cancelled sign-in
      }

      final GoogleSignInAuthentication auth = await account.authentication;
      final String? idToken = auth.idToken;

      if (idToken == null) {
        print("No ID Token found");
        return null; // Returning null for failed token fetch
      }

      print("ID Token acquired: $idToken");

      final response = await http.post(
        Uri.parse(ApiEndpoints.login),
        headers: {
          'Content-Type': 'application/json',
          "Authorization": "b $idToken",
        },
        body: jsonEncode({'email': account.email}),
      );
      print("Response body: ${response.body}");

      if (response.statusCode == 202) {
        final result = jsonDecode(response.body);
        print("Backend response: $result");

        final data = result['data'];
        if (data == null) {
          print("Error: 'data' field is null in the response");
          return null;
        }

        final learner = data['learner'];
        if (learner == null) {
          print("Error: 'learner' field is null in the response");
          return null;
        }

        final backendToken = data['token'];
        final userName = learner['name'] ?? 'Unknown';
        final userEmail = learner['email'] ?? 'Unknown';
        final userPhone = learner['mobile'] ?? 'Unknown';
        final userImage = learner['image'] ?? '';
        final learnerCode = learner['learner_code'] ?? '';
        final learnerId = learner['learner_id']?.toString() ?? '';

        print("User details: $userName, $userEmail, $userPhone, $userImage");
        print("Backend token: $backendToken");

        if (backendToken != null) {
          await _tokenStorage.saveToken(backendToken);

          try {
            final prefs = await SharedPreferences.getInstance();

            await prefs.setString('user_name', userName);
            await prefs.setString('user_email', userEmail);
            await prefs.setString('user_phone', userPhone);
            await prefs.setString('user_image', userImage);
            await prefs.setString('learner_code', learnerCode);
            await prefs.setString('learner_id', learnerId);

            print("✅ Values saved. Here's what’s stored:");

            print("user_name: ${prefs.getString('user_name')}");
            print("user_email: ${prefs.getString('user_email')}");
            print("user_phone: ${prefs.getString('user_phone')}");
            print("user_image: ${prefs.getString('user_image')}");
            print("learner_code: ${prefs.getString('learner_code')}");
            print("learner_id: ${prefs.getString('learner_id')}");
          } catch (e) {
            print("⚠ Error accessing SharedPreferences: $e");
          }
          print("Token saved to storage: $backendToken");

          // Returning the user details as a map
          return {
            'name': userName,
            'email': userEmail,
            'phone': userPhone,
            'image': userImage,
            'learnerCode': learnerCode,
            'learnerId': learnerId,
          };
        } else {
          print("Error: Backend token is null");
          return null;
        }
      } else {
        print("Backend login failed: ${response.body}");
        return null; // Returning null for failed backend response
      }
    } catch (error) {
      print("Error during Google sign-in: $error");
      return null; // Returning null on error
    }
  }
}
