import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/products/cart/coupon_widget.dart';
import 'package:e_commerce/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_commerce/navigation_menu.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Order Reviews',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // -- Items in Cart
              const AppCartItems(showAddRemoveButtons: false),
              const SizedBox(height: AppSizes.spaceBtwSections),

              // -- Coupon Section
              const AppCouponCode(),
              const SizedBox(height: AppSizes.spaceBtwSections),

              // -- Billing Section
              AppRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(AppSizes.md),
                backgroundColor: isDark ? AppColors.black : AppColors.white,
                child: const Column(children: [
                  /// pricing
                  AppBillingAmountSection(),
                  SizedBox(height: AppSizes.spaceBtwItems),

                  /// Divider
                  Divider(),
                  SizedBox(height: AppSizes.spaceBtwItems),

                  /// PaymentMethod
                  AppBillingPaymentSection(),
                  SizedBox(height: AppSizes.spaceBtwItems),

                  /// Address
                  AppBillingAddressSection(),
                ]),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            SuccessScreen(
              image: AppImages.successfulPaymentIcon,
              title: 'Payment Success!',
              subtitle: 'Your Item will be shipped soon',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            ),
          ),
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
