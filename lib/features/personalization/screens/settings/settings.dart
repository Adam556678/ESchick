import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce/common/widgets/list_tiles/app_user_profile_tile.dart';
import 'package:e_commerce/common/widgets/list_tiles/setting_menu_tile.dart';
import 'package:e_commerce/common/widgets/texts/app_section_heading.dart';
import 'package:e_commerce/features/personalization/screens/address/address.dart';
import 'package:e_commerce/features/personalization/screens/profile/profile.dart';
import 'package:e_commerce/features/shop/screens/order/order.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --Header
            AppPrimaryHeaderContainer(
                child: Column(
              children: [
                TAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: AppColors.white),
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),
                AppUserProfileTile(
                  onTap: () => Get.to(const ProfileScreen()),
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwSections,
                ),
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  const AppSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  AppSettingMenuTile(
                    onTap: () => Get.to(() => const UserAddressScreen()),
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Set shopping delivery address',
                  ),
                  const AppSettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add, remove Products and move to checkout',
                  ),
                  AppSettingMenuTile(
                    onTap: () => Get.to(() => const OrderScreen()),
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In-progress and Completed Orders',
                  ),
                  const AppSettingMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to registered bank account',
                  ),
                  const AppSettingMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List of all discounted coupons',
                  ),
                  const AppSettingMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notfications',
                    subtitle: 'Set any kind of notfication message',
                  ),
                  const AppSettingMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and connected accounts',
                  ),

                  //App Setting
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  const AppSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  const AppSettingMenuTile(
                    title: 'Load Data',
                    subtitle: 'Upload Data to your Cloud Firebase',
                    icon: Iconsax.document_upload,
                  ),

                  AppSettingMenuTile(
                    title: 'Geolocation',
                    subtitle: 'Set recommendation based on location',
                    icon: Iconsax.location,
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  AppSettingMenuTile(
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    icon: Iconsax.security_user,
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  AppSettingMenuTile(
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    icon: Iconsax.image,
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
