import 'package:flutter/material.dart';
import 'package:whether_now/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:whether_now/presentation/splash_screen/splash_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
  }
}
