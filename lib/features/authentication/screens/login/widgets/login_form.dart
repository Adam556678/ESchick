import 'package:e_commerce/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:e_commerce/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce/navigation_menu.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AppLoginForm extends StatelessWidget {
  const AppLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: AppTexts.email,
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: AppTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields / 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(AppTexts.rememberMe),
                ],
              ),
              TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(AppTexts.forgetPassword))
            ],
          ),
          const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),

          //Sign In Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: const Text(AppTexts.signIn)),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwItems,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () {
                  Get.to(const SignupScreen());
                },
                child: const Text(AppTexts.createAccount)),
          ),
        ],
      ),
    );
  }
}
