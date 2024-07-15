import "package:flutter/material.dart"

class LoginButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const LoginButton({
    super.key,
    required this.onTap,
    required this.text
    });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  onTap,
      child: Container(),
    );
  }
}