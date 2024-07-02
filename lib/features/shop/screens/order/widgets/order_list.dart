import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppOrderListItems extends StatelessWidget {
  const AppOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);

    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: AppSizes.spaceBtwItems),
      itemCount: 3,
      itemBuilder: (_, index) => AppRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(AppSizes.md),
        borderColor: AppColors.grey,
        backgroundColor: isDark ? AppColors.dark : AppColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                /// 1 Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: AppSizes.spaceBtwItems / 2),

                /// 2- Status & Date
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: AppColors.primary, fontWeightDelta: 1),
                      ),
                      Text("02 Jul 2024",
                          style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),

                /// 3- Icon
                IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Iconsax.arrow_right_34, size: AppSizes.iconSm),
                )
              ],
            ),

            const SizedBox(height: AppSizes.spaceBtwItems),

            /// Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// 1 Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: AppSizes.spaceBtwItems / 2),

                      /// 2- Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text("[#256f2]",
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      /// 1 Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: AppSizes.spaceBtwItems / 2),

                      /// 2- Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping Date',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text("03 Feb 2025",
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
