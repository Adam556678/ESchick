import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/images/app_circular_image.dart';
import 'package:e_commerce/common/widgets/texts/app_brand_title_with_verified_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppBrandCard extends StatelessWidget {
  const AppBrandCard({
    super.key,
    this.showBorder = false,
    this.onTap,
  });
  final void Function()? onTap;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    bool isDark = AppHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: AppRoundedContainer(
        padding: const EdgeInsets.all(AppSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            //Icon
            Flexible(
              child: AppCircularImage(
                image: AppImages.clothIcon,
                overlayColor: isDark ? AppColors.white : AppColors.black,
              ),
            ),
            const SizedBox(width: AppSizes.spaceBtwItems / 2),
            //Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),

                  //products count
                  Text(
                    '256 Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
