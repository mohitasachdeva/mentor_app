import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInScreen extends StatefulWidget {
  const GoogleSignInScreen({super.key});

  @override
  State<GoogleSignInScreen> createState() => _GoogleSignInScreenState();
}

class _GoogleSignInScreenState extends State<GoogleSignInScreen> {
  GoogleSignInAccount? _user;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> handleGoogleSignIn() async {
    try {
      final user = await _googleSignIn.signIn();
      setState(() {
        _user = user;
      });
    } catch (error) {
      print("Google Sign-In Error: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Image.asset(
                'assets/images/google_logo.png',
                width: 100,
              ),
              const SizedBox(height: 30),

              // Welcome Text
              Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Sign in with Google to continue',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 40),

              // Google Sign-In Button
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black87,
                  minimumSize: const Size(double.infinity, 50),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                icon: Image.asset(
                  'assets/images/google_icon.png',
                  height: 24,
                ),
                label: const Text(
                  'Sign in with Google',
                  style: TextStyle(fontSize: 16),
                ),
                onPressed: handleGoogleSignIn,
              ),

              const SizedBox(height: 20),

              if (_user != null)
                Column(
                  children: [
                    const Text(
                      "Logged in as:",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    const SizedBox(height: 8),
                    CircleAvatar(
                      backgroundImage: NetworkImage(_user!.photoUrl ?? ''),
                      radius: 30,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _user!.displayName ?? '',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      _user!.email,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}