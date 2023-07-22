
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'main.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topLeft,
            radius: 0.7,
            colors: [
              Color(0xFF8547D9),
              Color(0xFF2B0262),
            ],
            stops: [0.3, 1],
          ),
        ),
        child: Column(
          children: [
            const Spacer(),
            const Image(image: AssetImage('images/welcome1.png'), height: 275),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'your new favorite E-produt is here',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    height: 35,
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color(0xFF3E0A6E),
                      border: Border.all(
                        color: const Color(0xFFF0E5FF),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(90.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(90.0),
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainScreen(),
                          ),
                        );
                      },
                      child: const Center(
                        child: Text(
                          'Find it now',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 150),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
