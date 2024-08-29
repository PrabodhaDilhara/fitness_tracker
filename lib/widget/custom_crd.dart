import 'package:fitness_tracker/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomCrd extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  const CustomCrd({
    super.key,
    required this.child,
    this.color,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color ?? cardBgcolor,
      ),
      child: Padding(
        padding: padding ?? EdgeInsets.all(12),
        child: child,
      ),
    );
  }
}
