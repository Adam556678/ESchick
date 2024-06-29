import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppCircularIcon extends StatelessWidget {
  final IconData icon;
  final double? width;
  final double? height;
  final double? size;
  final VoidCallback? onPressed;
  final Color? color;
  final Color? backgroundColor;
  const AppCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = AppSizes.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor ??
            (AppHelperFunctions.isDarkMode(context)
                ? AppColors.black.withOpacity(0.9)
                : AppColors.white.withOpacity(0.9)),
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: color,
        ),
        onPressed: onPressed,
        iconSize: size,
      ),
    );
  }
}
