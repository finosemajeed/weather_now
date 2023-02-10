import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:whether_now/presentation/home_screen/home_screen.dart';
import 'package:whether_now/presentation/splash_screen/splash_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Whether now',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const SplashScreen(),
          routes: {
            '/splash_screen': (context) => const SplashScreen(),
            '/dashboard_screen': (context) => const DashboardScreen(),
          },
        );
      },
    );
  }
}
