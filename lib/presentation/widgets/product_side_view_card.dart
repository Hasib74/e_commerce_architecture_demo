import 'package:e_commerce/core/utils/app_assets/app_assets.dart';
import 'package:e_commerce/core/utils/app_colors/app_colors.dart';
import 'package:e_commerce/core/utils/app_dimension/app_dimenson.dart';
import 'package:e_commerce/presentation/screen/_functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductSideViewCard extends StatelessWidget {
  final String imageUrl;

  final bool? isSeleted;

  ProductSideViewCard({this.imageUrl = '', this.isSeleted});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: AppDimenson.product_side_card_size,
        width: AppDimenson.product_side_card_size,
        decoration: BoxDecoration(
          color: isSeleted! ? AppColors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          boxShadow: isSeleted!
              ? [
                  AppUiFunction.shadow(
                      offset: Offset(2, 2), spreadRadius: 1, blurRadius: 3),
                ]
              : null,
        ),
        child: Center(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: AppDimenson.product_side_image_size,
                  width: AppDimenson.product_side_image_size,
                  child: imageUrl.isEmpty
                      ? SvgPicture.asset(
                          AppAsset.chair,
                        )
                      : Image(
                          image: NetworkImage(
                            imageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                ),
              ),
              if (isSeleted!)
                Container()
              else
                Container(
                  height: AppDimenson.product_side_card_size,
                  width: AppDimenson.product_side_card_size,
                  color: AppColors.white.withOpacity(0.6),
                )
            ],
          ),
        ),
      ),
    );
  }
}
