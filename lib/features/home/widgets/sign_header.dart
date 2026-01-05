import 'package:flutter/material.dart';

class SignHeader extends StatelessWidget {
  final String sign;

  const SignHeader({super.key, required this.sign});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 48, 20, 24),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF1B1F3B),
            Color(0xFF0B0F1A),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Seu signo hoje',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            sign,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: const [
              Icon(Icons.nightlight_round, size: 18, color: Colors.white70),
              SizedBox(width: 6),
              Text(
                'Lua Crescente',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          )
        ],
      ),
    );
  }
}
