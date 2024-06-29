import 'package:e_commerce/common/widgets/brands/brand_show_case.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/texts/app_section_heading.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppCategoryTab extends StatelessWidget {
  const AppCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(physics: const NeverScrollableScrollPhysics(), children: [
      Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            // -- Brands
            const AppBrandShowcase(
              images: [
                AppImages.productImage1,
                AppImages.productImage2,
                AppImages.productImage3,
              ],
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),

            // -- Products
            AppSectionHeading(title: 'You might Like', onPressed: () {}),
            const SizedBox(height: AppSizes.spaceBtwItems),

            // -- Products Grid
            AppGridLayout(
              itemCount: 4,
              itemBuilder: (_, index) => const ProductCardVertical(),
            )
          ],
        ),
      ),
    ]);
  }
}
