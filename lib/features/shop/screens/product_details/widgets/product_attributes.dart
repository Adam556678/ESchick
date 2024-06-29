import 'package:e_commerce/common/widgets/chips/app_choice_chip.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/texts/app_section_heading.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        AppRoundedContainer(
          padding: const EdgeInsets.all(AppSizes.md),
          backgroundColor: isDark ? AppColors.darkerGrey : AppColors.grey,
          child: Column(
            children: [
              // -- Title Price and Stock Status
              Row(
                children: [
                  const AppSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(width: AppSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const AppProductTitleText(
                              title: 'Price : ', smallSize: true),
                          const SizedBox(width: AppSizes.spaceBtwItems),

                          // -- Actual Price
                          Text(
                            "\$25",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),

                          const SizedBox(width: AppSizes.spaceBtwItems),

                          // -- Sale Price
                          const AppProductPriceText(price: '20'),
                        ],
                      ),

                      // -- Stock
                      Row(
                        children: [
                          const AppProductTitleText(
                              title: 'Stock : ', smallSize: true),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),

              // -- Variation Description
              const AppProductTitleText(
                title:
                    'This is the description of the Product and it can go ino max 4 Lines',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),

        const SizedBox(height: AppSizes.spaceBtwItems),

        // -- Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppSectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8.0,
              children: [
                AppChoiceChip(
                    selected: false, text: 'Indigo', onSelected: (val) {}),
                AppChoiceChip(
                    selected: true, text: 'Green', onSelected: (val) {}),
                AppChoiceChip(
                    selected: false, text: 'Red', onSelected: (val) {}),
              ],
            )
          ],
        ),
        // -- Sizes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppSectionHeading(title: 'Sizes', showActionButton: false),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8.0,
              children: [
                AppChoiceChip(
                    selected: true, text: 'EU 34', onSelected: (val) {}),
                AppChoiceChip(
                    selected: false, text: 'EU 36', onSelected: (val) {}),
                AppChoiceChip(
                    selected: false, text: 'EU 38', onSelected: (val) {}),
              ],
            )
          ],
        ),
      ],
    );
  }
}
