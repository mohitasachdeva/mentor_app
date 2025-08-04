
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenStorageService {
  final FlutterSecureStorage _storage = FlutterSecureStorage();

  // Save the authorization token securely
  Future<void> saveToken(String token) async {
    print("Saving token: $token");
    await _storage.write(key: 'backend_token', value: token);
    print("Token saved successfully!");
  }

  // Get the stored authorization token
  Future<String?> getToken() async {
    return await _storage.read(key: 'backend_token');
  }

  // Clear the stored authorization token
  Future<void> clearToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token'); // or prefs.clear() if you want to remove all
  }

  // Save learner code in shared preferences
  Future<void> saveLearnerCode(String learnerCode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('learner_code', learnerCode);
  }

  Future<String?> getLearnerCode() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('learner_code');
  }

  // Optional: Add for setting learner code if needed
  Future<void> setLearnerCode(String learnerCode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('learner_code', learnerCode);
  }
}