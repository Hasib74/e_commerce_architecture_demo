import 'package:e_commerce/core/utils/app_colors/app_colors.dart';
import 'package:e_commerce/core/utils/app_dimension/app_dimenson.dart';
import 'package:e_commerce/core/utils/app_spaces/app_spaces.dart';
import 'package:e_commerce/presentation/screen/check_out/widget/cart_app_bar.dart';
import 'package:e_commerce/presentation/screen/check_out/widget/check_out_button.dart';
import 'package:e_commerce/presentation/widgets/cart_card.dart';
import 'package:e_commerce/presentation/widgets/name_value_tailes.dart';
import 'package:flutter/material.dart';

class CheckOutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CheckOutAppBar(),
            AppSpaces.spaces_height_25,
            CartCard(),
            AppSpaces.spaces_height_25,
            NameValueTailes(
              padding: AppDimenson.padding,
              name: "SUBTOTAL",
              details: "\$ 300",
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: AppDimenson.padding, right: AppDimenson.padding),
              child: Divider(
                color: AppColors.divider_color.withOpacity(0.3),
              ),
            ),
            NameValueTailes(
              padding: AppDimenson.padding,
              name: "SHIPPING",
              details: "\$ 200",
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: AppDimenson.padding, right: AppDimenson.padding),
              child: Divider(
                color: AppColors.divider_color.withOpacity(0.3),
              ),
            ),
            NameValueTailes(
              padding: AppDimenson.padding,
              name: "TAXES",
              details: "\$ 100",
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: AppDimenson.padding, right: AppDimenson.padding),
              child: Divider(
                color: AppColors.divider_color,
              ),
            ),
            NameValueTailes(
              padding: AppDimenson.padding,
              name: "TOTAL",
              details: "\$ 300",
            ),
            Spacer(),
            CheckOutButton(),
          ],
        ),
      ),
    );
  }
}
