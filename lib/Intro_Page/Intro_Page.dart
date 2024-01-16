import 'package:flutter/material.dart';
import 'package:people/core/app_export.dart';
import 'package:people/presentation/home_page_screen/home_page_screen.dart';
import 'package:people/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:people/widgets/custom_icon_button.dart';

class IntroPageScreen extends StatelessWidget {
  const IntroPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 41.h,
            vertical: 56.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIntroPage,
                height: 348.adaptSize,
                width: 348.adaptSize,
              ),
              SizedBox(height: 70.v),
              CustomImageView(
                imagePath: ImageConstant.imgLogo,
                height: 80.adaptSize,
                width: 345.adaptSize,
              ),
              SizedBox(height: 39.v),
              Text(
                "OF THE PEOPLE",
                style: theme.textTheme.labelMedium,
              ),
              SizedBox(height: 7.v),
              Text(
                "BY THE PEOPLE",
                style: theme.textTheme.labelMedium,
              ),
              SizedBox(height: 7.v),
              Text(
                "FOR THE PEOPLE",
                style: theme.textTheme.labelMedium,
              ),
              SizedBox(height: 92.v),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ),
                  );
                },
                child: CustomIconButton(
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  padding: EdgeInsets.all(17.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
