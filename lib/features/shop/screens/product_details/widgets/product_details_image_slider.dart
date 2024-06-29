import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce/common/widgets/icons/app_circular_icon.dart';
import 'package:e_commerce/common/widgets/images/app_rounded_image.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppProductImageSlider extends StatelessWidget {
  const AppProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = AppHelperFunctions.isDarkMode(context);
    return CurvedEdgesWidget(
      child: Container(
        color: isDark ? AppColors.darkerGrey : AppColors.light,
        child: Stack(
          children: [
            // --Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(AppSizes.productImageRadius * 2),
                child: Center(
                    child: Image(image: AssetImage(AppImages.productImage1))),
              ),
            ),

            // --Image Slider
            Positioned(
              left: AppSizes.defaultSpace,
              right: 0,
              bottom: 30,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => AppRoundedImage(
                      width: 80,
                      backgroundColor:
                          isDark ? AppColors.dark : AppColors.white,
                      border: Border.all(color: AppColors.primary),
                      padding: const EdgeInsets.all(AppSizes.sm),
                      imageUrl: AppImages.productImage3),
                  itemCount: 4,
                  separatorBuilder: (_, __) => const SizedBox(
                    width: AppSizes.spaceBtwItems,
                  ),
                ),
              ),
            ),

            //-- PRoduct AppBar
            const TAppBar(
              showBackArrow: true,
              actions: [
                AppCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
