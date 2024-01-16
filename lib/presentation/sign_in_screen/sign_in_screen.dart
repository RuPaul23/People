import 'package:flutter/material.dart';
import 'package:people/core/app_export.dart';
import 'package:people/widgets/custom_elevated_button.dart';
import 'package:people/widgets/custom_icon_button.dart';
import 'package:people/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  TextEditingController enterYourNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgSigninlogo,
                      height: 512.v,
                      width: 430.h,
                      alignment: Alignment.topCenter),
                  _buildSignInForm(context)
                ]))));
  }

  /// Section Widget
  Widget _buildSignInForm(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 56.h, vertical: 33.v),
            decoration: AppDecoration.fillTeal
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgPeopleHighRes,
                  height: 34.v,
                  width: 164.h),
              SizedBox(height: 33.v),
              Text("ENTER YOUR NUMBER",
                  style: CustomTextStyles.titleSmallInterErrorContainer),
              SizedBox(height: 12.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: CustomTextFormField(
                      controller: enterYourNumberController,
                      textInputAction: TextInputAction.done)),
              SizedBox(height: 25.v),
              CustomElevatedButton(
                  text: "ENTER",
                  margin: EdgeInsets.symmetric(horizontal: 5.h),
                  onPressed: () {
                    onTapENTER(context);
                  }),
              SizedBox(height: 25.v),
              Text("OR ENTER WITH ", style: theme.textTheme.bodySmall),
              SizedBox(height: 30.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(right: 23.h),
                        child: CustomIconButton(
                            height: 45.adaptSize,
                            width: 45.adaptSize,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgFacebook)))),
                Expanded(
                    child: CustomImageView(
                        imagePath: ImageConstant.imgApple,
                        height: 45.adaptSize,
                        width: 45.adaptSize,
                        margin: EdgeInsets.symmetric(horizontal: 23.h))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 23.h),
                        child: CustomIconButton(
                            height: 45.adaptSize,
                            width: 45.adaptSize,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgGoogle)))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 23.h),
                        child: CustomIconButton(
                            height: 45.adaptSize,
                            width: 45.adaptSize,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgTwitter))))
              ]),
              SizedBox(height: 35.v)
            ])));
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapENTER(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }
}
