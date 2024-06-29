import 'package:e_commerce/common/styles/space_styles.dart';
import 'package:e_commerce/common/widgets/login_register/app_social_buttons.dart';
import 'package:e_commerce/common/widgets/login_register/form_divider.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpaceStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              AppLoginHeader(dark: dark),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              const AppLoginForm(),

              const SizedBox(
                height: AppSizes.sm,
              ),

              FormDivider(dark: dark, text: AppTexts.orSignInWith.capitalize!),

              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              //Footer
              const AppSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
