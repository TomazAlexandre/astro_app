import 'package:flutter_riverpod/flutter_riverpod.dart';

final navigationProvider =
    StateNotifierProvider<NavigationNotifier, int>(
  (ref) => NavigationNotifier(),
);

class NavigationNotifier extends StateNotifier<int> {
  NavigationNotifier() : super(0);

  void changeTab(int index) {
    state = index;
  }

  // ✅ MÉTODO QUE ESTAVA FALTANDO
  void goToMoon() {
    state = 2; // índice da aba Lua
  }
}
