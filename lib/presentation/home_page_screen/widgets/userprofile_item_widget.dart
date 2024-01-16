import 'package:flutter/material.dart';
import 'package:people/core/app_export.dart';

class UserprofileItemWidget extends StatelessWidget {
  final String imagePath;
  final String labelText;
  final VoidCallback? onTap;

  const UserprofileItemWidget({
    Key? key,
    required this.imagePath,
    required this.labelText,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 127.v,
        width: 150.h,
        child: InkWell(
          onTap: onTap,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 127.v,
                  width: 150.h,
                  decoration: BoxDecoration(
                    color: appTheme.teal50,
                    borderRadius: BorderRadius.circular(20.h),
                    boxShadow: [
                      BoxShadow(
                        color: theme.colorScheme.errorContainer,
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 37.h,
                    right: 37.h,
                    bottom: 8.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 75.adaptSize,
                        width: 75.adaptSize,
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.h,
                          vertical: 19.v,
                        ),
                        decoration: AppDecoration.fillGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder37,
                        ),
                        child: CustomImageView(
                          imagePath: imagePath,
                          height: 37.v,
                          width: 38.h,
                          alignment: Alignment.center,
                        ),
                      ),
                      SizedBox(height: 10.v),
                      Text(
                        labelText,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
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
