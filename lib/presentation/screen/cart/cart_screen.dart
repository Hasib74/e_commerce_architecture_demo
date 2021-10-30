import 'package:e_commerce/core/language/language.dart';
import 'package:e_commerce/core/utils/app_assets/app_assets.dart';
import 'package:e_commerce/core/utils/app_spaces/app_spaces.dart';
import 'package:e_commerce/presentation/screen/cart/widget/buy_now.dart';
import 'package:e_commerce/presentation/screen/cart/widget/checkout_app_bar.dart';
import 'package:e_commerce/presentation/screen/cart/widget/cart_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CartAppBar(),
            Expanded(child: CartList()),
            BuyNowButton(),
          ],
        ),
      ),
    );
  }
}
