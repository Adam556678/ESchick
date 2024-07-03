import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const TAppBar(title: Text("Popular Products"), showBackArrow: true),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            ///Dropdown
            DropdownButtonFormField(
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
              items: [
                'Name',
                'Higher Price',
                'Lower Price',
                'Sale',
                'Newest',
                'Popularity'
              ]
                  .map((option) =>
                      DropdownMenuItem(value: option, child: Text(option)))
                  .toList(),
              onChanged: (value) {},
            ),

            const SizedBox(height: AppSizes.spaceBtwSections),

            /// Products
            AppGridLayout(
              itemCount: 5,
              itemBuilder: (_, index) => const ProductCardVertical(),
            ),
          ],
        ),
      )),
    );
  }
}
