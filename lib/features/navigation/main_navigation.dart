import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'navigation_provider.dart'; 
import '../home/pages/home_page.dart';
import '../compatibility/pages/compatibility_page.dart';
import '../moon/pages/moon_page.dart';
import '../profile/pages/profile_page.dart';


class MainNavigation extends ConsumerWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(navigationProvider);

    final pages = const [
      HomePage(),
      CompatibilityPage(),
      MoonPage(),
      ProfilePage(),
    ];

    final safeIndex =
        index >= 0 && index < pages.length ? index : 0;

    return Scaffold(
      body: pages[safeIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: safeIndex,
        onTap: (i) =>
            ref.read(navigationProvider.notifier).changeTab(i),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome),
            label: 'Hoje',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Amor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.brightness_3),
            label: 'Lua',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
