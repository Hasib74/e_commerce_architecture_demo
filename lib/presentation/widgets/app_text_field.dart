import 'package:e_commerce/core/language/language.dart';
import 'package:e_commerce/core/utils/app_colors/app_colors.dart';
import 'package:e_commerce/core/utils/app_dimension/app_dimenson.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget AppTextField(
        {String? label, String? hint, TextEditingController? controller}) =>
    Padding(
      padding: EdgeInsets.only(
          left: AppDimenson.padding, right: AppDimenson.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label!,
            style: Get.textTheme.bodyText2!
                .copyWith(color: AppColors.textColorBold),
          ),
          TextField(
            controller: controller,
            decoration: InputDecoration(
                hintText: hint,
                border: UnderlineInputBorder(
                    borderSide: new BorderSide(
                  color: AppColors.borderColor,
                ))),
          ),
        ],
      ),
    );
