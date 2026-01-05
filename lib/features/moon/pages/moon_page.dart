import 'package:flutter/material.dart';
import '../widgets/moon_card.dart';

class MoonPage extends StatelessWidget {
  const MoonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: MoonCard(),
    );
  }
}
