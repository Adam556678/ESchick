import 'package:e_commerce/features/authentication/controller/signup/signup_controller.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = AppHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(() => Checkbox(
              value: controller.privacyPolicy.value,
              onChanged: (value) => controller.privacyPolicy.value =
                  !controller.privacyPolicy.value)),
        ),
        const SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '${AppTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: AppTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? AppColors.white : AppColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? AppColors.white : AppColors.primary),
              ),
              TextSpan(
                text: ' ${AppTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: AppTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? AppColors.white : AppColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? AppColors.white : AppColors.primary,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
