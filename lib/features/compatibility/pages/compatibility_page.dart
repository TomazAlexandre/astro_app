import 'package:flutter/material.dart';
import '../widgets/compatibility_result.dart';

class CompatibilityPage extends StatelessWidget {
  const CompatibilityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: CompatibilityResult(),
    );
  }
}
