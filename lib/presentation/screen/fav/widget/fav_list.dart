import 'package:e_commerce/core/utils/app_spaces/app_spaces.dart';
import 'package:e_commerce/presentation/widgets/cart_card.dart';
import 'package:flutter/material.dart';

class FavList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (_, int index) {
            return CartCard();
          },
          separatorBuilder: (_, int index) {
            if (index == 6) {
              //printInfo(info: "Last Index ${index.toString()}");
              return Column(
                children: [
                  AppSpaces.spaces_height_25,
                  AppSpaces.spaces_height_25
                ],
              );
            } else {
              return AppSpaces.spaces_height_15;
            }
          },
          itemCount: 6),
    );
  }
}
