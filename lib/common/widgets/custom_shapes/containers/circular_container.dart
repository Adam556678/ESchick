import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppCircularContainer extends StatelessWidget {
  final double? width;
  final double? heigt;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;

  const AppCircularContainer({
    super.key,
    this.width = 400,
    this.heigt = 400,
    this.radius = 400,
    this.padding = 0,
    this.margin,
    this.child,
    this.backgroundColor = AppColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: heigt,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: backgroundColor),
      child: child,
    );
  }
}
