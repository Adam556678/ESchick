import 'package:e_commerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppChoiceChip extends StatelessWidget {
  const AppChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = AppHelperFunctions.getColor(text);

    return ChoiceChip(
      label: isColor != null ? const SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? AppColors.white : null),
      avatar: isColor != null
          ? AppCircularContainer(
              width: 50,
              heigt: 50,
              backgroundColor: isColor,
            )
          : null,
      backgroundColor: isColor,
      shape: isColor != null ? const CircleBorder() : null,
      padding: isColor != null ? EdgeInsets.zero : null,
      labelPadding: isColor != null ? const EdgeInsets.all(0) : null,
    );
  }
}
