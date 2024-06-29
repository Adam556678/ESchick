import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/texts/app_section_heading.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_categories_widget.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/search_bar_container.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:e_commerce/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) => SingleChildScrollView(
        child: Column(children: [
          const AppPrimaryHeaderContainer(
            child: Column(
              children: [
                //AppBar
                HomeAppBar(),
                SizedBox(height: AppSizes.spaceBtwSections),

                //SearchBar
                AppSearchContainer(text: 'Search in Store'),
                SizedBox(height: AppSizes.spaceBtwSections),

                //Categories
                Padding(
                  padding: EdgeInsets.only(left: AppSizes.defaultSpace),
                  child: Column(
                    children: [
                      AppSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: AppColors.white,
                      ),
                      SizedBox(
                        height: AppSizes.spaceBtwItems,
                      ),

                      //Categories
                      HomeCategories(),
                    ],
                  ),
                ),
                SizedBox(
                  height: AppSizes.spaceBtwSections,
                )
              ],
            ),
          ),

          //Body
          Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              children: [
                const AppPromoSlider(banners: [
                  AppImages.promoBanner1,
                  AppImages.promoBanner2,
                  AppImages.promoBanner3,
                ]),
                const SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),
                AppSectionHeading(
                  title: 'Popular Products',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),
                AppGridLayout(
                  itemBuilder: (_, index) => const ProductCardVertical(),
                  itemCount: 5,
                ),
              ],
            ),
          )
        ]),
      );
}
