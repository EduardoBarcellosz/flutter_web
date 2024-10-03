import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF7DBEDE),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Clarity QR code',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Color.fromARGB(255, 78, 78, 78),
                  ),
              ),
              const SizedBox(height: 20), // Espaço entre o título e o QR code
              QrImageView(
                data: 'https://www.google.com',
                version: QrVersions.auto,
                size: 200.0,
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
