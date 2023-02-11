import 'package:whether_now/domain/core/api.dart';
import 'package:whether_now/infrastracture/current_location/current_location.dart';

final currentLocation =
    CurrentLocation().fetchLocation().then((value) => value);
final currentIpAdress =
    CurrentLocation().fetchIpAdress().then((value) => value);

final location = currentLocation.then((location) => location.city).toString();

final String fetchWeatherApi =
    'http://api.weatherapi.com/v1/current.json?key=$apiKey&q=$location&aqi=no';

const String fetchIpAddressUrl = 'https://api.ipify.org/?format=json';

final String fetchLocationUrl = 'https://ipinfo.io/$currentIpAdress/geo';
