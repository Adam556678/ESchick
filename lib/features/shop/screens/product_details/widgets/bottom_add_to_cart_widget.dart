import 'package:e_commerce/common/widgets/icons/app_circular_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppBottomAddToCart extends StatelessWidget {
  const AppBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.defaultSpace,
          vertical: AppSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: isDark ? AppColors.darkerGrey : AppColors.light,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(AppSizes.cardRadiusLg),
              topRight: Radius.circular(AppSizes.cardRadiusLg))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const AppCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: AppColors.darkGrey,
                width: 40,
                height: 40,
                color: AppColors.white,
              ),
              const SizedBox(width: AppSizes.spaceBtwItems),
              Text("2", style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: AppSizes.spaceBtwItems),
              const AppCircularIcon(
                icon: Iconsax.add,
                backgroundColor: AppColors.black,
                width: 40,
                height: 40,
                color: AppColors.white,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: AppColors.black),
                backgroundColor: AppColors.black,
                padding: const EdgeInsets.all(AppSizes.md),
              ),
              child: const Text("Add to Cart")),
        ],
      ),
    );
  }
}
