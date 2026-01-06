import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/sign_header.dart';
import '../widgets/daily_card.dart';
import '../widgets/quick_action_card.dart';
import '../../horoscope/provider/horoscope_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const sign = 'aries';

    final horoscopeAsync = ref.watch(horoscopeProvider(sign));

    return Scaffold(
      backgroundColor: const Color(0xFF0B0F1A),
      body: Column(
        children: [
          const SignHeader(sign: 'Áries'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: horoscopeAsync.when(
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (error, _) => ListView(
                  children: const [
                    DailyCard(
                      text:
                          'Não foi possível carregar o horóscopo hoje.',
                    ),
                  ],
                ),
                data: (horoscope) => ListView(
                  children: [
                    DailyCard(text: horoscope.text),
                    const SizedBox(height: 24),
                    const _QuickActions(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _QuickActions extends StatelessWidget {
  const _QuickActions();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      children: [
        QuickActionCard(
          icon: Icons.nightlight_round,
          label: 'Lua',
          onTap: () {
            // depois conecta com navegação
          },
        ),
        QuickActionCard(
          icon: Icons.favorite,
          label: 'Compat.',
          onTap: () {
            // depois conecta com navegação
          },
        ),
        QuickActionCard(
          icon: Icons.person,
          label: 'Perfil',
          onTap: () {
            // depois conecta com navegação
          },
        ),
      ],
    );
  }
}
