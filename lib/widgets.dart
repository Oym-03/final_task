import 'package:flutter/material.dart';


Widget image (String imageName , double y , double x, {bool purple = true, Color? backgroundColor}) {
  return GestureDetector(

    child: Container(
      width: y,
      height: x,
      decoration: BoxDecoration(
        color: purple ? const Color(0xff8547D9) : const Color(0xffF0E5FF),

        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage('images/$imageName.png'),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

