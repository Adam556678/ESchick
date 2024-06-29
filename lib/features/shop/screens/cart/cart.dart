import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/products/cart/add_remove_button.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_item.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Checkout \$256.0'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (_, index) => const Column(
                  children: [
                    AppCartItem(),
                    SizedBox(height: AppSizes.spaceBtwItems),

                    //-- Add / remove item button
                    Row(
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
            itemCount: 8),
      ),
    );
  }
}
