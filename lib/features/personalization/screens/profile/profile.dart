import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/images/app_circular_image.dart';
import 'package:e_commerce/common/widgets/texts/app_section_heading.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const AppCircularImage(
                        image: AppImages.user, width: 80, height: 80),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    ),

                    //Details
                    const SizedBox(height: AppSizes.spaceBtwItems / 2),
                    const Divider(),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    const AppSectionHeading(
                      title: 'Profile Information',
                      showActionButton: false,
                    ),

                    AppProfileWidget(
                      title: 'Name',
                      value: 'Mahmoud Ramadan',
                      onPressed: () {},
                    ),
                    AppProfileWidget(
                      title: 'Username',
                      value: 'Mahmoud_mido123',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBtwItems,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: AppSizes.spaceBtwItems,
                    ),

                    const AppSectionHeading(
                      title: 'Personal Information',
                      showActionButton: false,
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBtwItems,
                    ),
                    AppProfileWidget(
                      title: 'User ID',
                      value: '45120',
                      icon: Iconsax.copy,
                      onPressed: () {},
                    ),
                    AppProfileWidget(
                      title: 'Email',
                      value: 'mahmudramadan75@yahoo.com',
                      onPressed: () {},
                    ),
                    AppProfileWidget(
                      title: 'Phone Number',
                      value: '01555049641',
                      onPressed: () {},
                    ),
                    AppProfileWidget(
                      title: 'Gender',
                      value: 'Male',
                      onPressed: () {},
                    ),
                    AppProfileWidget(
                      title: 'Date of Birth',
                      value: '3 Dec, 2002',
                      onPressed: () {},
                    ),
                    const Divider(),
                    const SizedBox(
                      height: AppSizes.spaceBtwItems,
                    ),
                    Center(
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Close Account',
                            style: TextStyle(color: Colors.red),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
