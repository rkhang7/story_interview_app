import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BaseButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget? child;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final double? elevation;
  final double? padding;
  const BaseButton({
    Key? key,
    this.onPressed,
    this.child,
    this.backgroundColor,
    this.width,
    this.height,
    this.borderRadius,
    this.padding,
    this.elevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.blue,
        minimumSize: Size(
          width ?? Get.width,
          height ?? 140.h,
        ),
        maximumSize: Size(
          width ?? Get.width,
          height ?? 140.h,
        ), //////// HERE
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 4),
        ),
        elevation: elevation,
        padding: padding == null
            ? EdgeInsets.zero
            : EdgeInsets.all(padding ?? 0), // and this
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
