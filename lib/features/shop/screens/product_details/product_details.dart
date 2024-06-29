import 'package:e_commerce/common/widgets/texts/app_section_heading.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/app_product_metadata.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_details_image_slider.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:e_commerce/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: const AppBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --Product Image Slider
            const AppProductImageSlider(),

            // -- Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: AppSizes.defaultSpace,
                  bottom: AppSizes.defaultSpace,
                  left: AppSizes.defaultSpace),
              child: Column(
                children: [
                  // -- Rating & Share
                  const AppRatingAndShare(),

                  // -- Price , title , Stock & Brand
                  const AppProductMetaData(),

                  //  -- Attributes
                  const ProductAttributes(),

                  const SizedBox(height: AppSizes.spaceBtwSections),

                  // -- Checkout Button
                  const ProductCheckoutButton(),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  const AppSectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(height: AppSizes.spaceBtwItems),

                  const ReadMoreText(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  // -- Reviews
                  const Divider(),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppSectionHeading(
                          title: 'Reviews(199)', showActionButton: false),
                      IconButton(
                        onPressed: () {
                          Get.to(const ProductReviews());
                        },
                        icon: const Icon(Iconsax.arrow_right_3, size: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProductCheckoutButton extends StatelessWidget {
  const ProductCheckoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(onPressed: () {}, child: const Text('Checkout')));
  }
}
