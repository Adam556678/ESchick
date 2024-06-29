import 'package:e_commerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppPrimaryHeaderContainer extends StatelessWidget {
  final Widget child;
  const AppPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        padding: const EdgeInsets.all(0),
        color: AppColors.primary,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: AppCircularContainer(
                backgroundColor: AppColors.white.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: AppCircularContainer(
                backgroundColor: AppColors.white.withOpacity(0.1),
              ),
            ),
            //Widget's child
            child,
          ],
        ),
      ),
    );
  }
}
