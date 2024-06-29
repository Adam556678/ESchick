import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppSettingMenuTile extends StatelessWidget {
  const AppSettingMenuTile(
      {super.key,
      required this.title,
      required this.subtitle,
      this.trailing,
      this.onTap,
      required this.icon});
  final String title;
  final String subtitle;
  final Widget? trailing;
  final void Function()? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 28, color: AppColors.primary),
      title: Text(title, style: Theme.of(context).textTheme.labelMedium),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
