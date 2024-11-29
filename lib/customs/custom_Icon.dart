
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../consts/consts_variables.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.svgurl,
  });

  final String svgurl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 0.5, color: Colors.black26),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: SvgPicture.asset(
          svgurl,
          colorFilter: ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
        ),
      ),
    );
  }
}
