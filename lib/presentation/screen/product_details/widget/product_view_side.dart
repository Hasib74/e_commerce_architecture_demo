import 'package:e_commerce/core/utils/app_dimension/app_dimenson.dart';
import 'package:e_commerce/core/utils/app_spaces/app_spaces.dart';
import 'package:e_commerce/presentation/widgets/product_side_view_card.dart';
import 'package:flutter/material.dart';

class ProductViewSide extends StatelessWidget {
  final List<String> productSideImageUrls;

  // ignore: public_member_api_docs
  const ProductViewSide({required this.productSideImageUrls});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimenson.product_side_card_size + 20,
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimenson.padding),
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, int index) {
                return ProductSideViewCard(
                  isSeleted: index == 0,
                );
              },
              separatorBuilder: (_, int index) {
                return Container();
              },
              itemCount: productSideImageUrls.length == 0
                  ? 6
                  : productSideImageUrls.length),
        ),
      ),
    );
  }
}
