import 'package:flutter/material.dart';
import 'package:mentore_app/services/blutooth_service.dart';

import 'package:mentore_app/theme/styles.dart'; // <--- newly created

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isAdvertising = false;

  void _toggleAdvertising() async {
    if (_isAdvertising) {
      await BluetoothService.stopAdvertising();
    } else {
      await BluetoothService.startAdvertising();
    }

    setState(() {
      _isAdvertising = !_isAdvertising;
    });
  }

  void _navigateTo(String title) {
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$title screen (not implemented yet)')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mentor Home',
          style: TextStyle(color: AppColors.lightBackground),
        ),
        backgroundColor: AppColors.primary,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: AppColors.primary),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome Mentor!', style: TextStyle(color: Colors.white, fontSize: 22)),
                  SizedBox(height: 8),
                  Text('Mentor Panel', style: TextStyle(color: Colors.white70, fontSize: 16)),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.science),
              title: const Text('Lab Practice'),
              onTap: () => _navigateTo('Lab Practice'),
            ),
            ListTile(
              leading: const Icon(Icons.edit_note),
              title: const Text('Daily Practice'),
              onTap: () => _navigateTo('Daily Practice'),
            ),
            ListTile(
              leading: const Icon(Icons.notes),
              title: const Text('Practice Notes'),
              onTap: () => _navigateTo('Practice Notes'),
            ),
            ListTile(
              leading: const Icon(Icons.how_to_reg),
              title: const Text('Attendance'),
              onTap: () => _navigateTo('Attendance'),
            ),
            ListTile(
              leading: const Icon(Icons.bar_chart),
              title: const Text('Daily Report'),
              onTap: () => _navigateTo('Daily Report'),
            ),
            ListTile(
              leading: const Icon(Icons.code),
              title: const Text('Code Distribution'),
              onTap: () => _navigateTo('Code Distribution'),
            ),
            ListTile(
              leading: const Icon(Icons.track_changes),
              title: const Text('Track'),
              onTap: () => _navigateTo('Track'),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: AppPaddings.screen,
          decoration: const BoxDecoration(
            gradient: AppGradients.backgroundGradient,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const Text('Bridgelabz Mentor App', style: AppTextStyles.header),
              const SizedBox(height: 10),
              const Text(
                'Empowering students with seamless attendance',
                textAlign: TextAlign.center,
                style: AppTextStyles.subHeader,
              ),
              const SizedBox(height: 50),
              Expanded(
                child: Center(
                  child: Card(
                    elevation: 12,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      padding: AppPaddings.card,
                      width: 300,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: _isAdvertising
                            ? AppGradients.activeSession
                            : AppGradients.idleSession,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            _isAdvertising ? Icons.stop_circle : Icons.play_circle_fill,
                            size: 60,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: _toggleAdvertising,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              padding: AppPaddings.button,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text(
                              _isAdvertising ? 'Stop Session' : 'Start Session',
                              style: AppTextStyles.button,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Text('© 2025 Bridgelabz Solution Pvt. Ltd.', style: AppTextStyles.footer),
            ],
          ),
        ),
      ),
    );
  }
}