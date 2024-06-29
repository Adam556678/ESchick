import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppTabBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> tabs;

  const AppTabBar({
    Key? key,
    required this.tabs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = AppHelperFunctions.isDarkMode(context);
    return Material(
      color: isDark ? AppColors.black : AppColors.white,
      child: TabBar(
        isScrollable: true,
        indicatorColor: AppColors.primary,
        tabAlignment: TabAlignment.start,
        labelColor: isDark ? AppColors.white : AppColors.primary,
        unselectedLabelColor: AppColors.darkGrey,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppDeviceUtils.getAppBarHeight());
}
