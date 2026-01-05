import 'package:flutter/material.dart';

class CompatibilityResult extends StatelessWidget {
  const CompatibilityResult({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF5B2C83),
            Color(0xFFB83F87),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.pinkAccent.withOpacity(0.4),
            blurRadius: 28,
            offset: const Offset(0, 14),
          ),
        ],
      ),
      child: const Text(
        'Áries ❤️ Leão\nCompatibilidade: 85%',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          height: 1.5,
        ),
      ),
    );
  }
}
