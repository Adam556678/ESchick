import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppVerticalImageText extends StatelessWidget {
  final String image;
  final String text;
  final Color textColor;
  final Color? backgroundColor;
  final VoidCallback onPressed;

  const AppVerticalImageText({
    super.key,
    required this.image,
    required this.text,
    required this.onPressed,
    this.textColor = AppColors.white,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (AppHelperFunctions.isDarkMode(context)
                        ? AppColors.dark
                        : AppColors.light),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: AppHelperFunctions.isDarkMode(context)
                      ? AppColors.light
                      : AppColors.dark,
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.sm / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
