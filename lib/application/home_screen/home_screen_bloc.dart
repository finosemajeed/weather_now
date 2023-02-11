import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:whether_now/domain/model/weather_model/weather_model.dart';
import 'package:whether_now/infrastracture/home_screen/home_screen_repo.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(HomeScreenState.initial()) {
    on<Started>((event, emit) async {
      emit(HomeScreenState(
        isLoading: true,
        isError: false,
        currentDay: '',
        weatherData: WeatherModel(),
      ));
      try {
        DateTime dateTime = DateTime.now();
        final currentDay = DateFormat.MMMMEEEEd().format(dateTime);
        final weatherData = await WeatherRepository().fetchWeather();
        log(weatherData.location!.localtimeEpoch.toString());
        emit(HomeScreenState(
          currentDay: currentDay,
          isLoading: false,
          isError: false,
          weatherData: weatherData,
        ));
      } catch (e) {
        log(e.toString(), name: 'weather loading error');
        emit(HomeScreenState(
          currentDay: '',
          isLoading: false,
          isError: true,
          weatherData: WeatherModel(),
        ));
      }
    });
  }
}
