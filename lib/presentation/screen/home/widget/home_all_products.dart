import 'package:e_commerce/core/utils/app_colors/app_colors.dart';
import 'package:e_commerce/core/utils/app_dimension/app_dimenson.dart';
import 'package:e_commerce/core/utils/app_spaces/app_spaces.dart';
import 'package:e_commerce/presentation/widgets/app_product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: public_member_api_docs
class HomeAllProducts extends StatelessWidget {
  // ignore: public_member_api_docs
  const HomeAllProducts({Key? key}) : super(key: key);

  // ignore: avoid_field_initializers_in_const_classes

  @override
  Widget build(BuildContext context) {
    const String allProducts = 'All Products';
    const List<String> categorys = ['Chair', "Table", "Sofas", "Beds", "Desks"];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _title(allProducts),
        AppSpaces.spaces_height_15,
        _categories_tab_bar(categorys),
        AppSpaces.spaces_height_15,
        _categories_list()
      ],
    );
  }

  Padding _title(String allProducts) {
    return Padding(
      padding: EdgeInsets.only(
        left: AppDimenson.padding,
      ),
      child: Text(
        allProducts.toUpperCase(),
        style: Get.textTheme.bodyText2!.copyWith(color: Colors.black),
      ),
    );
  }

  GridView _categories_list() {
    return GridView.builder(
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
          return const AppProductCard();
        });
  }

  // ignore: non_constant_identifier_names
  Widget _categories_tab_bar(List<String> categorys) {
    return Padding(
      padding: EdgeInsets.only(
          left: AppDimenson.padding, right: AppDimenson.padding),
      child: SizedBox(
        height: 25,
        width: Get.width,
        child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, int index) {
              return Container(
                height: 25,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.all(const Radius.circular(45)),
                ),
                child: Center(
                  child: Text(
                    // ignore: prefer_double_quotes
                    '   ${categorys[index]}   ',
                    style: GoogleFonts.spartan(
                        textStyle: Get.textTheme.bodyText1!
                            .copyWith(color: Colors.white)),
                  ),
                ),
              );
            },
            separatorBuilder: (_, int index) {
              if (index == 0) {}
              return AppSpaces.spaces_width_5;
            },
            itemCount: categorys.length),
      ),
    );
  }
}
