import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NameValueTailes extends StatelessWidget {
  final String? name;

  final String? details;

  final double? padding;

  // ignore: sort_constructors_first
  const NameValueTailes({Key? key, this.name, this.details, this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: padding ?? 0, right: padding ?? 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              name!,
              style: GoogleFonts.spartan(
                  textStyle: Get.textTheme.bodyText1, color: Colors.black),
            ),
          ),
          Expanded(
              child: Text(
            details!,
            style: GoogleFonts.spartan(
                textStyle: Get.textTheme.bodyText1, color: Colors.black),
          )),
        ],
      ),
    );
  }
}
