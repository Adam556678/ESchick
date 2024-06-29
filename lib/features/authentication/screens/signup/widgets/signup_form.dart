import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/terms_and_conditions.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: AppTexts.firstName),
              )),
              const SizedBox(
                width: AppSizes.spaceBtwInputFields,
              ),
              Expanded(
                  child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: AppTexts.lastName),
              )),
            ],
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user),
              labelText: AppTexts.username,
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelText: AppTexts.email,
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: AppTexts.phoneNo,
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: AppTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),

          const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),

          //Term and conditions
          const TermsAndConditions(),

          const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),

          //Signup Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Get.to(const VerifyEmailScreen());
                },
                child: const Text(AppTexts.createAccount)),
          ),
        ],
      ),
    );
  }
}
