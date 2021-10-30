import 'package:e_commerce/presentation/screen/fav/widget/fav_app_bar.dart';
import 'package:e_commerce/presentation/screen/fav/widget/fav_list.dart';
import 'package:flutter/material.dart';

class FavScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
      children: [
          FavAppBar(),
          Expanded(child: FavList()),
      ],
    ),
        ));
  }
}
