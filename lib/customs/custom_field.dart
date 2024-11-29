
import 'package:flutter/material.dart';

import '../consts/consts_variables.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    required this.hint,
    required this.preffixIcon,
    this.SuffixIcon,
  });

  final String hint;
  final IconData preffixIcon;
  final Icon? SuffixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: TextFormField(
        scrollPadding: const EdgeInsets.all(32),
        style: TextStyle(
          color: Colors.black,
          backgroundColor: kSecondColor,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          prefixIcon: Icon(
            preffixIcon,
            color: kPrimaryColor,
            size: 32,
          ),
          suffixIcon: SuffixIcon,
          filled: true,
          fillColor: kSecondColor,
          hintText: hint,
          hintStyle: TextStyle(color: kPrimaryColor),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(45),
              borderSide: const BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(45),
              borderSide: const BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}
