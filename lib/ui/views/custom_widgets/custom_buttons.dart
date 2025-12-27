import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButtons1 extends StatelessWidget {
  Color? borderColor;
  Color? boxColor;
  double? borderRadius;
  double? height; // new
  double? width;
  Widget? child;
  LinearGradient? linearGradient;
  VoidCallback? onTap;

  CustomButtons1({
    super.key,
    required this.child,
    this.borderColor,
    this.borderRadius,
    this.boxColor,
    this.linearGradient,
    this.onTap,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height, // added
        width: width,
        // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          // 👇 IMPORTANT FIX
          color: linearGradient == null
              ? (boxColor ?? const Color(0xffE12D54))
              : null,

          gradient: linearGradient,
          boxShadow: [
            BoxShadow(
              spreadRadius: 1.1,
              blurRadius: 4.0,
              color: Color(0xff000040).withValues(alpha: 0.3),
              // blurStyle: BlurStyle.solid,
              offset: Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(borderRadius ?? 10),

          border: Border.all(
            width: 1,
            color: borderColor ?? Colors.transparent,
          ),
        ),
        child: child,
      ),
    );
  }
}
