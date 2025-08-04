import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  bool _isSigningIn = false;

  Future<void> handleGoogleSignIn() async {
    setState(() => _isSigningIn = true);
    try {
      final user = await _googleSignIn.signIn();
      if (user != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Welcome, ${user.displayName ?? 'User'}!")),
        );

        // Navigate to home screen or perform further actions
        Navigator.pushReplacementNamed(context, '/home');
      }
    } catch (error) {
      debugPrint("Google Sign-In Error: $error");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Google Sign-In failed. Try again.")),
      );
    } finally {
      setState(() => _isSigningIn = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40),
          child: Column(
            children: [
              const SizedBox(height: 40),

              // Welcome Image
              Image.asset(
                'assets/images/welcome_image.png',
                height: 200,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.image_not_supported, size: 100),
              ),

              const SizedBox(height: 30),

              Text(
                'Welcome to MyApp',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Sign in to continue and explore amazing features!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),

              const SizedBox(height: 60),

              // Google Sign-In Button
              _isSigningIn
                  ? const CircularProgressIndicator()
                  : ElevatedButton.icon(
                      onPressed: handleGoogleSignIn,
                      icon: Image.asset(
                        'assets/images/google_icon.png',
                        height: 24,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.login),
                      ),
                      label: const Text(
                        'Sign in with Google',
                        style: TextStyle(fontSize: 16),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 5,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}