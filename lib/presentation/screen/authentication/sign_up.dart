import 'package:e_commerce/core/language/language.dart';
import 'package:e_commerce/core/utils/app_assets/app_assets.dart';
import 'package:e_commerce/core/utils/app_dimension/app_dimenson.dart';
import 'package:e_commerce/core/utils/app_spaces/app_spaces.dart';
import 'package:e_commerce/presentation/widgets/app_button.dart';
import 'package:e_commerce/presentation/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppSpaces.spaces_height_25,
            AppSpaces.spaces_height_25,
            SvgPicture.asset(
              AppAsset.logo,
              width: 148,
              height: 32,
            ),
            AppSpaces.spaces_height_25,
            AppSpaces.spaces_height_25,
            AppTextField(label: Language.email, hint: Language.hint_email),
            AppSpaces.spaces_height_25,
            AppTextField(label: Language.name, hint: Language.name_filed_hint),
            AppSpaces.spaces_height_25,
            AppTextField(label: Language.password, hint: "******"),
            AppSpaces.spaces_height_25,
            AppTextField(label: Language.confirm_password, hint: "******"),
            AppSpaces.spaces_height_25,
            AppButton(text: Language.sign_up),
            AppSpaces.spaces_height_25,
            Padding(
              padding: EdgeInsets.only(
                  left: AppDimenson.padding, right: AppDimenson.padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(Language.forget_password),
                  Text(
                    Language.sign_up,
                    style: Get.textTheme.bodyText2!
                        .copyWith(fontWeight: FontWeight.bold),
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
}
