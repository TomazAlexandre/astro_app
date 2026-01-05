import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../navigation/navigation_provider.dart';
import '../../profile/sign_provider.dart';
import '../../profile/pages/onboarding_page.dart';

import '../widgets/sign_header.dart';
import '../widgets/daily_card.dart';
import '../widgets/quick_action_card.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sign = ref.watch(signProvider);

    // 🔹 Onboarding automático (1ª vez)
    if (sign == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const OnboardingPage(),
          ),
        );
      });
    }

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SignHeader(sign: sign ?? 'Escolha seu signo'),
            const SizedBox(height: 16),
            const DailyCard(),
            const SizedBox(height: 24),
            QuickActionCard(
              title: 'Lua',
              icon: Icons.brightness_3,
              onTap: () {
                ref.read(navigationProvider.notifier).goToMoon();
              },
            ),
          ],
        ),
      ),
    );
  }
}
