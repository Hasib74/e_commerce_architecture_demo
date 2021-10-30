import 'package:e_commerce/core/utils/app_assets/app_assets.dart';
import 'package:e_commerce/core/utils/app_colors/app_colors.dart';
import 'package:e_commerce/core/utils/app_spaces/app_spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBannerCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String description;
  final String btnShopNow;
  final String imageUrl;

  final VoidCallback? btnShopNowTab;

  const AppBannerCard(
      {Key? key,
      this.description =
          "Lorazepam, sold under the brand names Ativan and Lorazepam Macure among others, is a benzodiazepine medication. It is used to treat anxiety disorders, trouble sleeping, severe agitation, active",
      this.btnShopNow = "SHOP NOW",
      this.subTitle = "COLLECTION",
      this.title = "New Arrival",
      this.imageUrl = "",
      this.btnShopNowTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        height: 202,
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                  color: AppColors.shadowColor.withOpacity(0.1),
                  spreadRadius: 10,
                  offset: const Offset(6, 6),
                  blurRadius: 20)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: _left(),
                      ),
                    ),
                    Expanded(child: _right())
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget _right() {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SvgPicture.asset(AppAsset.chair),
    );
  }

  Column _left() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(subTitle,
            style: GoogleFonts.spartan(
                fontSize: 10, textStyle: Get.textTheme.bodyText1)),
        AppSpaces.spaces_height_10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title.split(" ")[0],
              style: GoogleFonts.playfairDisplay(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  letterSpacing: 0.3,
                  wordSpacing: 0.5,
                  color: AppColors.primaryColor),
            ),
            Text(
              title.split(" ")[1],
              style: GoogleFonts.playfairDisplay(
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                  letterSpacing: 0.3,
                  wordSpacing: 0.5,
                  fontSize: 30),
            )
          ],
        ),
        AppSpaces.spaces_height_10,
        Text(
          description,
          style: GoogleFonts.spartan(fontSize: 08),
          maxLines: 2,
        ),
        AppSpaces.spaces_height_10,
        Text(
          btnShopNow,
          style: GoogleFonts.spartan(
              fontSize: 10,
              textStyle: Get.textTheme.bodyText1,
              color: AppColors.black,
              fontWeight: FontWeight.bold),
        ),
        Container(
          margin: const EdgeInsets.only(left: 4),
          height: 2,
          width: 45,
          color: AppColors.primaryColor,
        )
      ],
    );
  }
}
