import 'package:e_commerce/features/authentication/controller/signup/signup_controller.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/terms_and_conditions.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                controller: controller.firstName,
                validator: (value) =>
                    AppValidator.validateEmptyText('First Name', value),
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
                controller: controller.lastName,
                validator: (value) =>
                    AppValidator.validateEmptyText('Last Name', value),
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
            controller: controller.username,
            validator: (value) =>
                AppValidator.validateEmptyText('Username', value),
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
            controller: controller.email,
            validator: (value) => AppValidator.validateEmail(value),
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
            controller: controller.phoneNumber,
            validator: (value) => AppValidator.validatePhoneNumber(value),
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: AppTexts.phoneNo,
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),

          // Password

          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => AppValidator.validatePassword(value),
              expands: false,
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Iconsax.password_check),
                  labelText: AppTexts.password,
                  suffixIcon: IconButton(
                    icon: Icon(controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye),
                    onPressed: () {
                      controller.hidePassword.value =
                          !controller.hidePassword.value;
                    },
                  )),
            ),
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
                onPressed: () => controller.signup(),
                child: const Text(AppTexts.createAccount)),
          ),
        ],
      ),
    );
  }
}
