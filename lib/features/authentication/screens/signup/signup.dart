import 'package:e_commerce/common/widgets/login_register/app_social_buttons.dart';
import 'package:e_commerce/common/widgets/login_register/form_divider.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              AppTexts.signupTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),

            // Form
            const SignupForm(),

            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),
            //Form Divider
            FormDivider(dark: dark, text: AppTexts.orSignUpWith.capitalize!),

            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),

            //Social Buttons
            const AppSocialButtons()
          ],
        ),
      )),
    );
  }
}
