import 'package:e_commerce/common/styles/shadow_styles.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/icons/app_circular_icon.dart';
import 'package:e_commerce/common/widgets/images/app_rounded_image.dart';
import 'package:e_commerce/common/widgets/texts/app_brand_title_with_verified_icon.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppProductCardHorizontal extends StatelessWidget {
  const AppProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);

    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        color: isDark ? AppColors.darkerGrey : AppColors.lightContainer,
      ),
      child: Row(
        children: [
          ///Thumbnail
          AppRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(AppSizes.sm),
            backgroundColor: isDark ? AppColors.dark : AppColors.light,
            child: Stack(
              children: [
                /// thumbnail image
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: AppRoundedImage(
                    imageUrl: AppImages.productImage1,
                    applyImageRadius: true,
                  ),
                ),

                //Sale Tag
                Positioned(
                  top: 12,
                  child: AppRoundedContainer(
                    radius: AppSizes.sm,
                    backgroundColor: AppColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppSizes.sm, vertical: AppSizes.xs),
                    child: Text('25%',
                        style: Theme.of(context).textTheme.labelLarge!.apply(
                              color: AppColors.black,
                            )),
                  ),
                ),

                //Favourite IconButton
                const Positioned(
                  top: 0,
                  right: 0,
                  child: AppCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),

          ///Details
          SizedBox(
            width: 164,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: AppSizes.sm, left: AppSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppProductTitleText(
                        title: 'Green Nike Half Sleeves Shirt',
                        smallSize: true,
                      ),
                      SizedBox(height: AppSizes.spaceBtwItems / 2),
                      AppBrandTitleWithVerifiedIcon(title: 'Nike')
                    ],
                  ),

                  const Spacer(),

                  ///Product Price and Add To cart
                  Row(
                    children: [
                      // ignore: prefer_const_constructors
                      Flexible(
                        child: const AppProductPriceText(
                          price: '20.00',
                        ),
                      ),

                      const Spacer(),

                      /// Add to Cart Button
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(AppSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                            width: AppSizes.iconLg * 1.2,
                            height: AppSizes.iconLg * 1.2,
                            child: Center(
                                child:
                                    Icon(Iconsax.add, color: AppColors.white))),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
