import 'package:flutter/material.dart';
import 'package:whether_now/domain/model/weather_model/weather_model.dart';
import 'package:whether_now/presentation/main_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationDocumentsDirectory();
  Hive
    ..init(directory.path)
    ..registerAdapter(WeatherModelAdapter())
    ..registerAdapter(CurrentAdapter())
    ..registerAdapter(ConditionAdapter())
    ..registerAdapter(LocationAdapter());

  await Hive.openBox<WeatherModel>('WeatherDataDb');

  runApp(const MainScreen());
}
