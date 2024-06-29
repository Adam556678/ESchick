import 'package:e_commerce/common/styles/space_styles.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  final String image, title, subtitle;
  final VoidCallback onPressed;
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpaceStyles.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Center(
                child: Image(
                    width: AppHelperFunctions.screenWidth() * 0.6,
                    image: AssetImage(image)),
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              //Title & Subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),

              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(AppTexts.tContinue),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
