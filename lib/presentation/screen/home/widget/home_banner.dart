import 'package:e_commerce/presentation/widgets/app_banner_card.dart';
import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return const SizedBox(
      child: AppBannerCard(),
    );
  }
}
