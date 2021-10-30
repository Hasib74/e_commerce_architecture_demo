import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error/failures.dart';
import 'package:e_commerce/core/language/language.dart';
import 'package:e_commerce/core/network/network_info.dart';
import 'package:e_commerce/core/utils/app_assets/app_assets.dart';
import 'package:e_commerce/core/utils/app_dimension/app_dimenson.dart';
import 'package:e_commerce/core/utils/app_spaces/app_spaces.dart';
import 'package:e_commerce/presentation/app_routes/app_routes.dart';
import 'package:e_commerce/presentation/widgets/app_button.dart';
import 'package:e_commerce/presentation/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _getData();
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppSpaces.spaces_height_25,
            AppSpaces.spaces_height_25,
            AppSpaces.spaces_height_25,
            SvgPicture.asset(AppAsset.logo),
            AppSpaces.spaces_height_25,
            AppSpaces.spaces_height_25,
            AppSpaces.spaces_height_25,
            AppTextField(label: Language.email, hint: Language.hint_email),
            AppSpaces.spaces_height_25,
            AppTextField(label: Language.password, hint: "******"),
            AppSpaces.spaces_height_25,
            AppButton(
                text: Language.log_in,
                onTap: () => Get.toNamed(AppRoutes.DISPLAY)),
            AppSpaces.spaces_height_25,
            Padding(
              padding: EdgeInsets.only(
                  left: AppDimenson.padding, right: AppDimenson.padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(Language.forget_password),
                  InkWell(
                    onTap: () => Get.toNamed(AppRoutes.SIGN_UP),
                    child: Text(
                      Language.sign_up,
                      style: Get.textTheme.bodyText2!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDimenson.padding),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    Language.policy,
                    style: Get.textTheme.bodyText1,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<Either<dynamic, Failure>> _check_networrk() async {
    if (await NetworkInfoController.to.isConnected) {
      try {
        //Api calll
        var _status_code = 200;
        var _respon = "res";
        if (_status_code == 200) {
          return Left(_respon);
        } else {
          return Right(DataNotFound());
        }
      } catch (err) {
        return Right(ServerFailure());
      }
    } else {
      return Right(NoConnectionFailure());
    }
  }

  void _getData() async {
    Either<dynamic, Failure> _response = await _check_networrk();


    _response.fold((l) {
      print("Success  : ${l}");
    }, (r) {
      print(r.toString());
    });
  }
}
