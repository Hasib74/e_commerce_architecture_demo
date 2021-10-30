import 'package:e_commerce/core/language/language.dart';
import 'package:e_commerce/core/utils/app_assets/app_assets.dart';
import 'package:e_commerce/core/utils/app_colors/app_colors.dart';
import 'package:e_commerce/core/utils/app_dimension/app_dimenson.dart';
import 'package:e_commerce/core/utils/app_spaces/app_spaces.dart';
import 'package:e_commerce/presentation/screen/_functions/functions.dart';
import 'package:e_commerce/presentation/screen/product_details/widget/add_to_cart_button.dart';
import 'package:e_commerce/presentation/screen/product_details/widget/product_details_app_bar.dart';
import 'package:e_commerce/presentation/widgets/name_value_tailes.dart';
import 'package:e_commerce/presentation/widgets/product_quantity.dart';
import 'package:e_commerce/presentation/screen/product_details/widget/product_view_side.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widget/product_view.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({Key? key}) : super(key: key);

  String productName = "Nashville Armchair";

  String price = "1879";

  String Availability = "Availability";

  // product details
  String _frame = "Frame Material";
  String _seat_fill = "Seat Fill Material";
  String _back_fill = "Back Fill Material";
  String _leg_and_base = "Leg and base Material";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: _body(),
            ),
            Positioned.fill(
              bottom: 0.0,
              top: Get.height - 100,
              child: addToCart(),
            )
          ],
        ),
      ),
    );
  }

  Column _body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ProductDetailsAppBar(),
        const ProductView(),
        const ProductViewSide(productSideImageUrls: []),
        AppSpaces.spaces_height_15,
        _name_price(),
        AppSpaces.spaces_height_25,
        _avilable(),
        AppSpaces.spaces_height_25,
        _quantity(),
        _description(),
        _manufacturer_details(),
        _finished_and_fabric(),
        SizedBox(
          height: 60,
        )
      ],
    );
  }

  Padding _quantity() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("${Language.description}",
              style: GoogleFonts.spartan(
                  color: Colors.black, fontWeight: FontWeight.bold)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Language.quantity,
                style: GoogleFonts.spartan(
                    color: Colors.black, fontWeight: FontWeight.w500),
              ),
              AppSpaces.spaces_height_15,
              ProductQuantity(),
            ],
          ),
        ],
      ),
    );
  }

  Row _avilable() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          '${Availability}',
          style: GoogleFonts.spartan(
              textStyle: Get.textTheme.bodyText1!.copyWith(
                  color: AppColors.primaryColor, fontWeight: FontWeight.bold)),
        ),
        Container(
          height: 25,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [AppUiFunction.shadow()],
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              ' Check ${Availability}      '.toUpperCase(),
              textAlign: TextAlign.center,
              style: GoogleFonts.spartan(
                  textStyle: Get.textTheme.bodyText1!.copyWith(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ],
    );
  }

  Align _name_price() {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(left: AppDimenson.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              productName,
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.normal,
                  textStyle: Get.textTheme.headline2,
                  color: Colors.black),
            ),
            Text(
              "\$ ${price}",
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.normal,
                  textStyle: Get.textTheme.headline2,
                  color: AppColors.primaryColor),
            ),
          ],
        ),
      ),
    );
  }

  Widget _description() {
    return const Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        "Although the name of the player has not yet been disclosed by authorities, both in India and England, Cricbuzz understands that it is Rishabh Pant, who was seen visiting amid crowds, including at Euro games at the Wembley Stadium in London. Whether the National Health Service in England, which has been conducting the tests on the Indian players, will notify this or not, the BCCI sources have confirmed that the infected player is India's star wicketkeeper batsman.",
        maxLines: 4,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget _manufacturer_details() {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (_, int index) {
              return NameValueTailes(
                name: _frame,
                details: "FAS Grade OAK",
              );
            },
            separatorBuilder: (_, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: new Container(
                  height: 1,
                  decoration: BoxDecoration(
                      color: AppColors.borderColor.withOpacity(0.6)),
                ),
              );
            },
            itemCount: 4));
  }

  Widget _finished_and_fabric() {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
                height: 25,
                // margin:  const EdgeInsets.only(top: 10 ,bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [AppUiFunction.shadow()],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "FINISHES",
                      style: GoogleFonts.spartan(color: AppColors.primaryColor),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: AppColors.primaryColor,
                    ),
                  ],
                )),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
                height: 25,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [AppUiFunction.shadow()],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "FABRICS",
                      style: GoogleFonts.spartan(color: AppColors.primaryColor),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: AppColors.primaryColor,
                    ),
                  ],
                )),
          ),
        ),
      ],
    );
  }

  Widget addToCart() {
    return  AddToCartButton();
  }
}
