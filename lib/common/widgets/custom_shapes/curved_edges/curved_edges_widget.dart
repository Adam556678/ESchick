import 'package:e_commerce/common/widgets/custom_shapes/curved_edges/app_custom_curved_edges.dart';
import 'package:flutter/material.dart';

class CurvedEdgesWidget extends StatelessWidget {
  final Widget child;
  const CurvedEdgesWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: AppCustomCurvedEges(),
      child: child,
    );
  }
}
