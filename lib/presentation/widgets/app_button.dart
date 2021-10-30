import 'package:e_commerce/core/utils/app_colors/app_colors.dart';
import 'package:e_commerce/core/utils/app_dimension/app_dimenson.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget AppButton(
    {double? height,
    double? width,
    String? text,
    double padding = 16,
    Color? backgroundColor,
    TextStyle? textStyle,
    double borderRadius = 16,
    VoidCallback? onTap}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: EdgeInsets.only(left: padding, right: padding),
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        child: Center(
          child: Text(
            text!,
            style: textStyle ??
                const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  );
}
