import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppCartCounter extends StatelessWidget {
  final Color? iconColor;
  final VoidCallback onPressed;
  const AppCartCounter({
    super.key,
    this.iconColor = AppColors.white,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: const Icon(Iconsax.shopping_bag),
          color: iconColor,
        ),

        //Counter
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: AppColors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
