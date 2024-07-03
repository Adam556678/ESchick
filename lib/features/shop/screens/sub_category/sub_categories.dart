import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/images/app_rounded_image.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:e_commerce/common/widgets/texts/app_section_heading.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text("Sports"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const AppRoundedImage(
                width: double.infinity,
                imageUrl: AppImages.promoBanner3,
                applyImageRadius: true,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Sub-Categories
              Column(
                children: [
                  /// Heading
                  AppSectionHeading(title: 'Sports Shirts', onPressed: () {}),
                  const SizedBox(height: AppSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 128,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, __) =>
                            const AppProductCardHorizontal(),
                        separatorBuilder: (_, __) => const SizedBox(
                              width: AppSizes.spaceBtwItems,
                            ),
                        itemCount: 4),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
