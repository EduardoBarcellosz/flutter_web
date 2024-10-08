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
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF7DBEDE), // Cor de fundo
                image: DecorationImage(
                  image: AssetImage('lib/imagens/starsbackground.png'),
                  repeat: ImageRepeat.repeat,
                ),
              ),
            ),
            Center(
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
                  const SizedBox(
                      height: 20), // Espaço entre o título e o QR code
                  QrImageView(
                    data: 'https://www.google.com',
                    version: QrVersions.auto,
                    size: 200.0,
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
