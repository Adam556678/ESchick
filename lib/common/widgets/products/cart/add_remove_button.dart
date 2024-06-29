import 'package:e_commerce/common/widgets/icons/app_circular_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppProductQuantityWithAddAndRemove extends StatelessWidget {
  const AppProductQuantityWithAddAndRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: AppSizes.md,
          color: isDark ? AppColors.white : AppColors.black,
          backgroundColor: isDark ? AppColors.darkGrey : AppColors.light,
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        const AppCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: AppSizes.md,
          color: AppColors.white,
          backgroundColor: AppColors.primary,
        ),
      ],
    );
  }
}
