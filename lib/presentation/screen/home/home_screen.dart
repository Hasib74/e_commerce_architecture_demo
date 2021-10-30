import 'package:e_commerce/core/utils/app_dimension/app_dimenson.dart';
import 'package:e_commerce/core/utils/app_spaces/app_spaces.dart';
import 'package:e_commerce/presentation/screen/home/widget/home_all_products.dart';
import 'package:e_commerce/presentation/screen/home/widget/home_app_bar.dart';
import 'package:e_commerce/presentation/screen/home/widget/home_banner.dart';
import 'package:e_commerce/presentation/screen/home/widget/home_products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // ignore: public_member_api_docs, avoid_field_initializers_in_const_classes
  final String bestSelling = 'best selling';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeAppBar(),
            Expanded(child: _body()),
          ],
        ),
      ),
    );
  }

  Widget _body() {
    return ListView(
      shrinkWrap: true,
      children: [
        AppSpaces.spaces_height_15,
        const HomeBanner(),
        AppSpaces.spaces_height_15,
        AppSpaces.spaces_height_15,
        const HomeProducts(),
        AppSpaces.spaces_height_15,
        AppSpaces.spaces_height_15,
        const HomeAllProducts(),
        AppSpaces.spaces_height_25,
        AppSpaces.spaces_height_25,
      ],
    );
  }
}
