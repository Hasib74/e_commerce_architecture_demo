import 'package:e_commerce/core/utils/app_assets/app_assets.dart';
import 'package:e_commerce/core/utils/app_dimension/app_dimenson.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailsAppBar extends StatelessWidget {
  ProductDetailsAppBar({Key? key}):super(key: key) ;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppDimenson.padding),
      height: AppDimenson.app_bar_height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(AppAsset.back, color: Colors.black),
          SvgPicture.asset(
            AppAsset.fav,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
