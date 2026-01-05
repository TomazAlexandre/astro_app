import 'package:flutter/material.dart';

class DailyCard extends StatelessWidget {
  final String text;

  const DailyCard({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF151A2E),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Horóscopo de hoje',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 15,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
