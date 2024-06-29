import 'package:e_commerce/common/widgets/images/app_circular_image.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppUserProfileTile extends StatelessWidget {
  const AppUserProfileTile({
    super.key,
    this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const AppCircularImage(
        backgoundColor: Colors.transparent,
        image: AppImages.user,
      ),
      title: Text(
        'Mahmoud Ramadan',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: AppColors.white),
      ),
      subtitle: Text(
        'mahmudramadan@yahoo.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: AppColors.white),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.edit, color: AppColors.white)),
      onTap: onTap,
    );
  }
}
