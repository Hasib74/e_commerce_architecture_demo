import 'package:e_commerce/core/utils/app_colors/app_colors.dart';
import 'package:flutter/cupertino.dart';

class AppUiFunction {
  static BoxShadow shadow(
          {double spreadRadius = 10,
          Offset offset = const Offset(6, 6),
          double blurRadius = 20}) =>
      BoxShadow(
          color: AppColors.shadowColor.withOpacity(0.1),
          spreadRadius: spreadRadius,
          offset: offset,
          blurRadius: blurRadius);
}
