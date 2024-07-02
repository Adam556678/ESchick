import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppBillingAmountSection extends StatelessWidget {
  const AppBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///Subtotal
        Row(
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            const Spacer(),
            Text('\$256.0', style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 2),

        /// Shipping Fee
        Row(
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            const Spacer(),
            Text('\$6.0', style: Theme.of(context).textTheme.labelLarge)
          ],
        ),

        const SizedBox(height: AppSizes.spaceBtwItems / 2),

        /// Tax Fee
        Row(
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            const Spacer(),
            Text('\$6.0', style: Theme.of(context).textTheme.labelLarge)
          ],
        ),

        const SizedBox(height: AppSizes.spaceBtwItems / 2),

        /// Order Total
        Row(
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium),
            const Spacer(),
            Text('\$6.0', style: Theme.of(context).textTheme.titleMedium)
          ],
        ),
      ],
    );
  }
}
