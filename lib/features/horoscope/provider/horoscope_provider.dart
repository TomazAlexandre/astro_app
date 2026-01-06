import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../service/horoscope_ai_service.dart';
import '../service/horoscope_cache_service.dart';
import '../model/horoscope_result.dart';

final horoscopeAIServiceProvider =
    Provider((ref) => HoroscopeAIService());

final horoscopeCacheServiceProvider =
    Provider((ref) => HoroscopeCacheService());

final horoscopeProvider =
    FutureProvider.family<HoroscopeResult, String>((ref, sign) async {
  final cache = ref.read(horoscopeCacheServiceProvider);
  final service = ref.read(horoscopeAIServiceProvider);

  final cached = await cache.get(sign);
  if (cached != null) {
    return HoroscopeResult(text: cached);
  }

  final text = await service.getDailyHoroscope(sign);
  await cache.save(sign, text);

  return HoroscopeResult(text: text);
});
