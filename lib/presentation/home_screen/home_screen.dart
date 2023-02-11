import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:whether_now/application/home_screen/home_screen_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:whether_now/presentation/home_screen/widgets/custom_input_field.dart';
import 'package:whether_now/presentation/home_screen/widgets/custom_weather_data.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: BlocBuilder<HomeScreenBloc, HomeScreenState>(
            builder: (context, state) {
              final weatherData = state.weatherData.current;
              final location = state.weatherData.location;
              if (state.isLoading) {
                return Center(
                  child: LottieBuilder.asset(
                      'assets/lottie/loading_animation.json'),
                );
              } else {
                return Stack(
                  children: [
                    Image.asset(
                      'assets/background/night _image.jfif',
                      fit: BoxFit.fill,
                      height: 100.h,
                      width: 100.w,
                    ),
                    Column(
                      children: [
                        SizedBox(height: 2.h),
                        const CustomInputField(),
                        SizedBox(height: 10.h),
                        Center(
                          child: Text(
                            location?.name.toString() ?? 'unknown',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Center(
                          child: Text(
                            state.currentDay,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Center(
                          child: Text(
                            '${weatherData?.tempC ?? '0'}°c',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 100,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -5,
                            ),
                          ),
                        ),
                        const Center(
                          child: Text(
                            '----------------',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                            ),
                          ),
                        ),
                        CustomWeatherData(
                            weatherData:
                                weatherData?.condition?.text ?? 'No Data'),
                        SizedBox(height: 2.h),
                        CustomWeatherData(
                            weatherData:
                                '${weatherData?.tempC ?? '0'}°c/${weatherData?.tempF ?? '0'}°f')
                      ],
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
