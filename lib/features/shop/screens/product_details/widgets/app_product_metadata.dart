import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/images/app_circular_image.dart';
import 'package:e_commerce/common/widgets/texts/app_brand_title_with_verified_icon.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppProductMetaData extends StatelessWidget {
  const AppProductMetaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = AppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // -- Price & Sale Price
        Row(
          children: [
            // Sale Tage
            AppRoundedContainer(
              radius: AppSizes.sm,
              backgroundColor: AppColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.sm, vertical: AppSizes.xs),
              child: Text('25%',
                  style: Theme.of(context).textTheme.labelLarge!.apply(
                        color: AppColors.black,
                      )),
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),

            //Price
            Text(
              '\$240',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            const AppProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

        // --Title
        const AppProductTitleText(title: 'Green Nike Sports'),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

        // --Stack Status
        Row(
          children: [
            const AppProductTitleText(title: 'Status'),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

        // --Brand
        Row(
          children: [
            AppCircularImage(
              image: AppImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: isDark ? AppColors.white : AppColors.black,
            ),
            const AppBrandTitleWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
