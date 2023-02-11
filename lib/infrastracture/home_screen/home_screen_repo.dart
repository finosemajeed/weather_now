import 'package:whether_now/domain/core/api.dart';
import 'package:whether_now/domain/model/weather_model/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherRepository {
  Future<WeatherModel> fetchWeather() async {
    try {
      final response = await http.get(Uri.parse(fetchWeatherApi));
      if (response.statusCode == 200) {
        final data = response.body;
        return weatherModelFromJson(data);
      } else {
        throw Exception('failed to load weather data');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
