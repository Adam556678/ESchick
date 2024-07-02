import 'package:e_commerce/common/widgets/products/cart/add_remove_button.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_item.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppCartItems extends StatelessWidget {
  final bool showAddRemoveButtons;

  const AppCartItems({super.key, this.showAddRemoveButtons = true});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (_, index) => Column(
              children: [
                const AppCartItem(),
                if (showAddRemoveButtons)
                  const SizedBox(height: AppSizes.spaceBtwItems),

                //-- Add / remove item button
                if (showAddRemoveButtons)
                  const Row(
                    children: [
                      SizedBox(width: 70),
                      AppProductQuantityWithAddAndRemove(),
                      Spacer(),
                      AppProductPriceText(price: '256')
                    ],
                  )
              ],
            ),
        separatorBuilder: (_, __) =>
            const SizedBox(height: AppSizes.spaceBtwSections),
        itemCount: 2);
  }
}
