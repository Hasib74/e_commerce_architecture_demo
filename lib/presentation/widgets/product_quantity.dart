import 'package:e_commerce/core/language/language.dart';
import 'package:e_commerce/core/utils/app_assets/app_assets.dart';
import 'package:e_commerce/core/utils/app_colors/app_colors.dart';
import 'package:e_commerce/core/utils/app_dimension/app_dimenson.dart';
import 'package:e_commerce/core/utils/app_spaces/app_spaces.dart';
import 'package:e_commerce/presentation/screen/_functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

typedef CountValue = Function(int);

class ProductQuantity extends StatefulWidget {
  CountValue? countValue;
  late final int initalValue;

  late final double? iconSize;

  late final double? boxSize;

  late final double? spaces;

  // ignore: public_member_api_docs
  ProductQuantity(
      {this.countValue,
      this.initalValue = 1,
      this.boxSize,
      this.iconSize,
      this.spaces});

  @override
  _ProductQuantityState createState() => _ProductQuantityState();
}

class _ProductQuantityState extends State<ProductQuantity> {
  late int _value;
  late double? iconSize = null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _value = widget.initalValue;

    iconSize = widget.iconSize;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () {
            if (_value != 1) _value -= 1;

            // widget.countValue!(_value);

            setState(() {});
          },
          child: Container(
            height: widget.boxSize ?? AppDimenson.quantity_card_size,
            width: widget.boxSize ?? AppDimenson.quantity_card_size,
            decoration: BoxDecoration(
                boxShadow: [
                  AppUiFunction.shadow(
                      spreadRadius: 1, blurRadius: 1, offset: Offset(1, 1)),
                ],
                color: AppColors.quantity_card_color.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                AppAsset.minuse,
                height: widget.iconSize,
                width: widget.iconSize,
              ),
            ),
          ),
        ),
        if (widget.spaces != null)
          SizedBox(
            width: widget.spaces,
          )
        else
          AppSpaces.spaces_width_15,
        Text(
          _value.toString(),
          style:
              Get.textTheme.headline1!.copyWith(color: AppColors.primaryColor),
        ),
        if (widget.spaces != null)
          SizedBox(
            width: widget.spaces,
          )
        else
          AppSpaces.spaces_width_15,
        InkWell(
          onTap: () {
            _value += 1;
            //  widget.countValue!(_value);

            printInfo(info: 'Count Value ==> ${_value}');

            setState(() {});
          },
          child: Container(
            height: widget.boxSize ?? AppDimenson.quantity_card_size,
            width: widget.boxSize ?? AppDimenson.quantity_card_size,
            decoration: BoxDecoration(
                color: AppColors.quantity_card_color.withOpacity(0.6),
                boxShadow: [
                  AppUiFunction.shadow(
                      spreadRadius: 1, blurRadius: 1, offset: Offset(1, 1)),
                ],
                borderRadius: BorderRadius.circular(10)),
            child: Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.add,
                size: widget.iconSize,
              ),
            ),
          ),
        )
      ],
    );
  }
}
