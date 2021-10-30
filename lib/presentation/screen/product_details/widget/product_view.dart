import 'package:e_commerce/core/utils/app_assets/app_assets.dart';
import 'package:e_commerce/core/utils/app_dimension/app_dimenson.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProductView extends StatelessWidget {
  final String imageUrl;

  const ProductView({this.imageUrl = ""});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: AppDimenson.product_view_height,
      width: Get.width*0.8,
      child: Center(
        // ignore: unnecessary_null_comparison
        child: imageUrl.isEmpty
            ? SvgPicture.asset(AppAsset.chair ,fit: BoxFit.cover, height: double.infinity,width: double.infinity,)
            : Image(image: NetworkImage(imageUrl)),
      ),
    );
  }
}
