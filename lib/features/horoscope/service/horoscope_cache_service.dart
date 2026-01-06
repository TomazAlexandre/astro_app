import 'package:shared_preferences/shared_preferences.dart';

class HoroscopeCacheService {
  static const _prefix = 'horoscope_';

  String _key(String sign) {
    final today = DateTime.now().toIso8601String().substring(0, 10);
    return '$_prefix${sign}_$today';
  }

  Future<String?> get(String sign) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_key(sign));
  }

  Future<void> save(String sign, String text) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key(sign), text);
  }
}
