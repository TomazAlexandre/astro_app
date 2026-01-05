import 'package:flutter/material.dart';

class MoonCard extends StatelessWidget {
  const MoonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF1F1C3A),
            Color(0xFF3A2F7A),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.deepPurpleAccent.withOpacity(0.35),
            blurRadius: 30,
            offset: const Offset(0, 16),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Fase da Lua',
            style: TextStyle(
              fontSize: 14,
              letterSpacing: 1.4,
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            'Lua Crescente',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Momento ideal para iniciar projetos e tomar decisões importantes.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
