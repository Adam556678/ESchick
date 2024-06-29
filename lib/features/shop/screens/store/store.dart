import 'package:e_commerce/common/widgets/appbar/tab_bar.dart';
import 'package:e_commerce/common/widgets/brands/app_brand_card.dart';
import 'package:e_commerce/features/shop/screens/store/widgets/app_category_tab.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/search_bar_container.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce/common/widgets/texts/app_section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            AppCartCounter(
              onPressed: () {},
              iconColor: isDark ? Colors.white : Colors.black,
            )
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) => [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: isDark ? AppColors.black : AppColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(AppSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    const AppSearchContainer(
                      text: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),

                    const SizedBox(height: AppSizes.spaceBtwSections),

                    //Feature Brands
                    AppSectionHeading(
                      title: 'Feature Brands',
                      onPressed: () {},
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

                    //Brands Grid
                    AppGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 70,
                        itemBuilder: (_, index) {
                          return const AppBrandCard(
                            showBorder: true,
                          );
                        })
                  ],
                ),
              ),
              bottom: const AppTabBar(tabs: [
                Tab(child: Text('Sports')),
                Tab(child: Text('Furniture')),
                Tab(child: Text('Electronics')),
                Tab(child: Text('Clothes')),
                Tab(child: Text('Cosmetics')),
              ]),
            )
          ],
          body: const TabBarView(children: [
            AppCategoryTab(),
            AppCategoryTab(),
            AppCategoryTab(),
            AppCategoryTab(),
            AppCategoryTab(),
          ]),
        ),
      ),
    );
  }
}
