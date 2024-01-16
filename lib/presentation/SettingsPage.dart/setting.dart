import 'package:flutter/material.dart';
import 'package:people/core/app_export.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 39.h,
            top: 63.v,
            right: 39.h,
          ),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBack,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(
                          top: 7.adaptSize,
                          bottom: 6.adaptSize,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text(
                          "SETTINGS",
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 46.v),
              CustomImageView(
                imagePath: ImageConstant.imgSettingIcon,
                height: 132.adaptSize,
                width: 132.adaptSize,
                alignment: Alignment.center,
              ),
              SizedBox(height: 78.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLocation,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "Addresses",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 11.v),
              Divider(
                indent: 1.h,
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPrivate,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 3.v,
                      ),
                      child: Text(
                        "Privacy and security",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.v),
              Divider(),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLanguage,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 7.h,
                        top: 3.v,
                      ),
                      child: Text(
                        "Languages",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.v),
              Divider(
                indent: 1.h,
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgColorSwatchTheme,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "Themes",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 11.v),
              Divider(
                indent: 1.h,
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgNotification20x20,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "Notifications",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 11.v),
              Divider(
                indent: 1.h,
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSupport,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 3.v,
                      ),
                      child: Text(
                        "Support",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
