
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search,
              color: Colors.white60),
          hintText: 'Search here,',
          hintStyle: const TextStyle(color: Colors.white60),
          focusedBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: Colors.white60),
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
