import 'package:e_commerce/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = AppHelperFunctions.isDarkMode(context);

    return Positioned(
        right: AppSizes.defaultSpace,
        bottom: AppDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: controller.nextPage,
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: dark ? AppColors.primary : AppColors.dark,
            ),
            child: const Icon(
              Icons.keyboard_arrow_right_sharp,
            )));
  }
}
