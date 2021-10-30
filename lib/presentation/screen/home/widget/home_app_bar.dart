import 'package:e_commerce/core/utils/app_assets/app_assets.dart';
import 'package:e_commerce/core/utils/app_spaces/app_spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar extends StatelessWidget {
   const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: SvgPicture.asset(
              AppAsset.menu,
              color: Colors.black,
              height: 8,
              width: 21,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: SvgPicture.asset(
              AppAsset.logo,
              width: 75,
              height: 29,
            ),
          ),
          Row(
            children: [
              SvgPicture.asset(
                AppAsset.search,
                height: 20,
                width: 20,
              ),
              AppSpaces.spaces_width_15,
              SvgPicture.asset(
                AppAsset.profile,
                height: 24,
                width: 24,
              ),

              AppSpaces.spaces_width_15,

            ],
          )
        ],
      ),
    );
  }
}
