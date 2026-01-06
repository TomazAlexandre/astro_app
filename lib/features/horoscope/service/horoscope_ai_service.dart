import 'dart:convert';
import 'package:http/http.dart' as http;

class HoroscopeAIService {
  static const _endpoint =
      'https://horoscope-z4jikq7goq-uc.a.run.app';

  Future<String> getDailyHoroscope(String sign) async {
    final response = await http.post(
      Uri.parse(_endpoint),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'sign': sign}),
    );

    if (response.statusCode != 200) {
      throw Exception('Erro ao buscar horóscopo');
    }

    final data = jsonDecode(response.body);
    return data['text'];
  }
}
