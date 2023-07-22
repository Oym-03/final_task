
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Side3Screen extends StatelessWidget {
  const Side3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2B0262),
      child: ListView(

        children: [

          Container(
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Side 1',
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
