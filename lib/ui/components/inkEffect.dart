import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InkEffect extends StatelessWidget {
  final BoxDecoration boxDecoration;
  final double borderRadius;
  final VoidCallback onTap;
  final Widget child;

  const InkEffect(
      {Key? key, required this.boxDecoration,required this.borderRadius, required this.onTap, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration: boxDecoration,
        child: InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          onTap: onTap,
          child: child,
        ),
      ),
    );
  }
}