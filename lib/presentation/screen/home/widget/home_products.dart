import 'package:e_commerce/core/utils/app_dimension/app_dimenson.dart';
import 'package:e_commerce/presentation/app_routes/app_routes.dart';
import 'package:e_commerce/presentation/widgets/app_product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeProducts extends StatelessWidget {
  const HomeProducts({Key? key}) : super(key: key);

  final bestSelling = "best selling";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: AppDimenson.padding,
          ),
          child: Text(
            bestSelling.toUpperCase(),
            style: Get.textTheme.bodyText2!.copyWith(color: Colors.black),
          ),
        ),
        GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 270, // Left and right spacing between Widget
              mainAxisSpacing: 10,
            ),
            itemCount: 10,
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 0),
            itemBuilder: (BuildContext context, int index) {
              return AppProductCard(
                onTap: () => Get.toNamed(AppRoutes.PRODUCT_DETAILS),
              );
            })
      ],
    );
  }
}
