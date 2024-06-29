import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  final String text;
  const FormDivider({
    super.key,
    required this.dark,
    required this.text,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? AppColors.lightGrey : AppColors.darkGrey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(text),
        Flexible(
          child: Divider(
            color: dark ? AppColors.lightGrey : AppColors.darkGrey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
