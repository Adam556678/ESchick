import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class AppRatingIndicator extends StatelessWidget {
  const AppRatingIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: AppDeviceUtils.getScreenWidth(context) * 0.5,
            child: LinearProgressIndicator(
              value: value,
              borderRadius: BorderRadius.circular(10),
              backgroundColor: AppColors.grey,
              minHeight: 11,
              valueColor: const AlwaysStoppedAnimation(AppColors.primary),
            ),
          ),
        )
      ],
    );
  }
}
