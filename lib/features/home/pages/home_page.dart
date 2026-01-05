import 'package:flutter/material.dart';
import '../widgets/sign_header.dart';
import '../widgets/daily_card.dart';
import '../widgets/quick_action_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0F1A),
      body: Column(
        children: [
          const SignHeader(sign: 'Áries'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ListView(
                children: const [
                  DailyCard(
                    text:
                        'Hoje é um dia favorável para ouvir sua intuição e agir com mais confiança.',
                  ),
                  SizedBox(height: 24),
                  _QuickActions(),
                ],
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
          onTap: () {},
        ),
        QuickActionCard(
          icon: Icons.favorite,
          label: 'Compat.',
          onTap: () {},
        ),
        QuickActionCard(
          icon: Icons.person,
          label: 'Perfil',
          onTap: () {},
        ),
      ],
    );
  }
}
