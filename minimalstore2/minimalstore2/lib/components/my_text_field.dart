import "package:flutter/material.dart";

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hinText;
  final bool obscuretext;

  const MyTextField({
    super.key
    required this.controller,
    required this.hintText,
    required this.obsureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderSide(color: Colors.grey.shade400)
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hinText,
          hintStyle: TextStyle(color: Colors.grey.shade500)
        )
      )
    );
  }
}
