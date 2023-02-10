import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon:
                            const Icon(Icons.search, color: Colors.white60),
                        hintText: 'Search here,',
                        hintStyle: const TextStyle(color: Colors.white60),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white60),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  const Center(
                    child: Text(
                      'Ernakkulam',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Saturday, February 14, 2023',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  const Center(
                    child: Text(
                      '15°c',
                      style: TextStyle(
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
                  const Center(
                    child: Text(
                      'Sunny',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  const Center(
                    child: Text(
                      '15°c/59°f',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
