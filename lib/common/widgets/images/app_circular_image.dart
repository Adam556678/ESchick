import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppCircularImage extends StatelessWidget {
  const AppCircularImage({
    super.key,
    this.boxFit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgoundColor,
    this.width = 56,
    this.height = 56,
    this.padding = AppSizes.sm,
  });

  final BoxFit? boxFit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgoundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    bool isDark = AppHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgoundColor ?? (isDark ? AppColors.black : AppColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image: isNetworkImage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        fit: boxFit,
        color: overlayColor,
      ),
    );
  }
}
