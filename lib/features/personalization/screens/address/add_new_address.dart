import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const TAppBar(title: Text("Add a New Address"), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: 'Name',
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.mobile),
                    labelText: 'PhoneNumber',
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwInputFields),
                Row(children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.building_31),
                        labelText: 'Street',
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSizes.spaceBtwInputFields),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.code),
                        labelText: 'Postal Code',
                        labelStyle: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ]),
                const SizedBox(height: AppSizes.spaceBtwInputFields),
                Row(children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.building),
                        labelText: 'City',
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSizes.spaceBtwInputFields),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.activity),
                        labelText: 'State',
                      ),
                    ),
                  ),
                ]),
                const SizedBox(height: AppSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.global),
                    labelText: 'Country',
                  ),
                ),

                //Form Button
                const SizedBox(height: AppSizes.defaultSpace),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Save'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
