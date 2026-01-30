import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class PrimaryProgressIndicator extends StatelessWidget {
  final double value; // 0.0 to 1.0
  final double height;
  final Color? backgroundColor;
  final Color? progressColor;
  final BorderRadius? borderRadius;
  final Duration animationDuration;

  const PrimaryProgressIndicator({
    super.key,
    required this.value,
    this.height = 12,
    this.backgroundColor,
    this.progressColor,
    this.borderRadius,
    this.animationDuration = const Duration(milliseconds: 500),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.grey.shade300,
        borderRadius: borderRadius ?? BorderRadius.circular(8),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              AnimatedContainer(
                duration: animationDuration,
                width: constraints.maxWidth * value.clamp(0.0, 1.0),
                decoration: BoxDecoration(
                  color: progressColor ?? AppColors.primary,
                  borderRadius: borderRadius ?? BorderRadius.circular(8),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
