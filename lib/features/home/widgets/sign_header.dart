import 'package:flutter/material.dart';

class SignHeader extends StatelessWidget {
  final String sign;
  const SignHeader({super.key, required this.sign});

  @override
  Widget build(BuildContext context) {
    return Text(
      sign,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
