import 'package:people/core/Features/HandSignPage.dart';
import 'package:people/core/Features/MorePage.dart';
import 'package:people/core/Features/RetinaVisionPage.dart';
import 'package:people/core/Features/Text2VoicePage.dart';
import 'package:people/core/NavigationBar/Scanner.dart';
import 'package:people/core/Notification/NotificationPage.dart';
import 'package:people/presentation/SettingsPage.dart/setting.dart';
import 'package:people/presentation/profile_screen/Profile_Page.dart';
import 'package:people/presentation/sign_in_screen/sign_in_screen.dart';

import '../home_page_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:people/core/app_export.dart';
import 'package:people/widgets/custom_icon_button.dart';
import 'package:people/widgets/custom_search_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class HomePageScreen extends StatelessWidget {
  HomePageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 39.h,
            vertical: 33.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 0.5.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img170, //for profile image
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      radius: BorderRadius.circular(20.h),
                      margin: EdgeInsets.symmetric(vertical: 3.v),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProfileScreen(), // Replace ProfilePage with the actual page
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        top: 3.v,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Hi, People",
                            style: theme.textTheme.titleMedium,
                          ),

                          //Location
                          SizedBox(height: 1.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgLocation, //location image
                                height: 10.adaptSize,
                                width: 10.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Text(
                                  "Guwahati",
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                NotificationPage(), // Replace NotificationPage with the actual page
                          ),
                        );
                      },
                      child: CustomImageView(
                        imagePath:
                            ImageConstant.imgNotification, //Notification image
                      ),
                    ),
                  ],
                ),
              ),

              // Search Bar
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Search...",
                ),
              ),

              //What do you want to use?
              SizedBox(height: 20.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "What do you want to use?",
                    style: CustomTextStyles.labelLargeErrorContainer,
                  ),
                ),
              ),
              SizedBox(height: 17.v),

              //RetinaVision HandDetection and all Function
              _buildUserProfile(context),

/*
              //Important plae nearby
              SizedBox(height: 22.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Important places nearby",
                      style: theme.textTheme.titleMedium,
                    ),
                    Container(
                      height: 8.v,
                      margin: EdgeInsets.only(
                        top: 5.v,
                        bottom: 9.v,
                      ),
                      child: AnimatedSmoothIndicator(
                        activeIndex: 0,
                        count: 3,
                        effect: ScrollingDotsEffect(
                          spacing: 8,
                          activeDotColor: theme.colorScheme.primaryContainer,
                          dotColor: appTheme.blueGray100,
                          dotHeight: 8.v,
                          dotWidth: 8.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Hospital, Pharmacy, Bus Stop Part
              //Hospital
              SizedBox(height: 20.v),
              Container(
                margin: EdgeInsets.only(
                  left: 21.h,
                  right: 12.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.fillTeal.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "GU Hospital",
                          style: CustomTextStyles.labelLargeErrorContainerBold,
                        ),
                        SizedBox(height: 4.v),
                        Text(
                          "Hospital",
                          style: theme.textTheme.labelSmall,
                        ),
                      ],
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgMap,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                    ),
                  ],
                ),
              ),

              //Pharmacy
              SizedBox(height: 22.v),
              Container(
                margin: EdgeInsets.only(
                  left: 21.h,
                  right: 12.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 9.v,
                ),
                decoration: AppDecoration.fillTeal.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "GU Medicos",
                            style:
                                CustomTextStyles.labelLargeErrorContainerBold,
                          ),
                          SizedBox(height: 4.v),
                          Text(
                            "Pharmacy",
                            style: theme.textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgMap,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                    ),
                  ],
                ),
              ),

              //Bus Stop
              SizedBox(height: 26.v),
              Container(

                margin: EdgeInsets.only(
                  left: 21.h,
                  right: 12.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.fillTeal.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bus Stop (Arts Building)",
                            style:
                                CustomTextStyles.labelLargeErrorContainerBold,
                          ),
                          SizedBox(height: 3.v),
                          Text(
                            "Bus Stop",
                            style: theme.textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgMap,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                    ),
                  ],
                ),
              ),
*/
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// RetinaVision HandDetection and all Function
  Widget _buildUserProfile(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 21.h),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 125.v,
            crossAxisCount: 2,
            mainAxisSpacing: 31.h,
            crossAxisSpacing: 31.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            String labelText;

            switch (index) {
              case 0:
                labelText = 'RetinaVision';
                break;
              case 1:
                labelText = 'HandSign';
                break;
              case 2:
                labelText = 'Text2Voice';
                break;
              case 3:
                labelText = 'More';
                break;
              default:
                labelText = '';
            }

            // Adjust the image paths based on the index
            String imagePath;
            switch (index) {
              case 0:
                imagePath = ImageConstant.imgEye;
                break;
              case 1:
                imagePath = ImageConstant.imgHandRecognition;
                break;
              case 2:
                imagePath = ImageConstant.imgVoice;
                break;
              case 3:
                imagePath = ImageConstant.imgCategory;
                break;
              default:
                imagePath = '';
            }

            return UserprofileItemWidget(
              imagePath: imagePath,
              labelText: labelText,
              onTap: () {
                // Handle navigation to different pages based on the index
                switch (index) {
                  case 0:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RetinaVisionPage(),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HandSignDetectionPage(),
                      ),
                    );
                    break;
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Text2VoicePage(),
                      ),
                    );
                    break;
                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MorePage(),
                      ),
                    );
                    break;
                  default:
                  // Handle default case if needed
                }
              },
            );
          },
        ),
      ),
    );
  }





/// Navigation Bar Widget
Widget _buildBottomBar(BuildContext context) {
  return Container(
    height: 55.adaptSize,
    //margin: EdgeInsets.symmetric(horizontal: 24.v),
    decoration: BoxDecoration(
      color: appTheme.teal50,
      //borderRadius: BorderRadius.circular(38.h),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Home Icon
        GestureDetector(
          onTap: () {
            // Add your navigation logic for the Home icon here
            Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePageScreen(),
                      ),
                    );
          },
          child: CustomImageView(
            imagePath: ImageConstant.imgHome,
            height: 33.v,
            width: 33.v,
          ),
        ),

        // Scanning Icon
        GestureDetector(
          onTap: () {
            // Add your navigation logic for the Scanning icon here
            Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyScanner(),
                      ),
                    );
          },
          child: CustomImageView(
            imagePath: ImageConstant.imgScan,
            height: 33.v,
            width: 33.v,
          ),
        ),

        // Settings Icon
        GestureDetector(
          onTap: () {
            // Add your navigation logic for the Settings icon here
            Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingsScreen(),
                      ),
                    );
          },
          child: CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 33.v,
            width: 33.v,
          ),
        ),

        // Account Icon
        GestureDetector(
          onTap: () {
            // Add your navigation logic for the Account icon here
             Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ),
                    );
          },
          child: CustomImageView(
            imagePath: ImageConstant.imgAccount,
            height: 33.v,
            width: 33.v,
          ),
        ),
      ],
    ),
  );
}

}
