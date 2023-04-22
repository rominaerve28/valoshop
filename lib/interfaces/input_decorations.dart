import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration LoginInputDecoration({
    required String hintText,
    IconData? prefixIcon
  }) {
    return InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: Color.fromARGB(255, 46, 45, 45)),
        prefixIcon: prefixIcon != null
        ?  Icon(prefixIcon,color: Colors.black)
        : null
        );
  }
}
