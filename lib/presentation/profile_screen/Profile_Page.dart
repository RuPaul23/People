import 'package:flutter/material.dart';
import 'package:people/core/app_export.dart';
import 'package:people/widgets/custom_elevated_button.dart';
import 'package:people/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  TextEditingController priceController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 44.h,
                  top: 63.v,
                  right: 44.h,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: CustomImageView(
                              imagePath: ImageConstant.imgBack, //BackButton
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              margin: EdgeInsets.only(
                                top: 7.v,
                                bottom: 6.v,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: Text(
                              "PROFILE",
                              style: theme.textTheme.headlineSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 35.v),
                    CustomImageView(
                      imagePath: ImageConstant.img170109x108,
                      height: 109.v,
                      width: 108.h,
                      radius: BorderRadius.circular(
                        54.h,
                      ),
                    ),
                    SizedBox(height: 68.v),
                    _buildPrice(context),
                    SizedBox(height: 26.v),
                    _buildFullName(context),
                    SizedBox(height: 26.v),
                    _buildEmail(context),
                    SizedBox(height: 26.v),
                    _buildPassword(context),
                    SizedBox(height: 99.v),
                    _buildSave(context),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPrice(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 31.h,
      ),
      child: CustomTextFormField(
        controller: priceController,
        hintText: "USERNAME",
      ),
    );
  }

  Widget _buildFullName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 31.h,
      ),
      child: CustomTextFormField(
        controller: fullNameController,
        hintText: "FULL NAME",
      ),
    );
  }

  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 31.h,
      ),
      child: CustomTextFormField(
        controller: emailController,
        hintText: "EMAIL ID",
        textInputType: TextInputType.emailAddress,
      ),
    );
  }

  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 31.h,
      ),
      child: CustomTextFormField(
        controller: passwordController,
        hintText: "PASSWORD",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    );
  }

  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
      width: 129.h,
      text: "SAVE",
    );
  }
}
