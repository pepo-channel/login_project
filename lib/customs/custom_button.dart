import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    this.textColor = Colors.white, this.ontap,
  });

  final String text;
  final Color color;
  final Color? textColor;

  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 60,
        width: 350,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 20),
        )),
      ),
    );
  }
}
