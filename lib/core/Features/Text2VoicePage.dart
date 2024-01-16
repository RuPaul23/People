import 'package:flutter/material.dart';
import 'package:people/core/app_export.dart';
import 'package:people/core/utils/image_constant.dart';
import 'package:people/widgets/custom_image_view.dart';

class Text2VoicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text2Voice Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVoice,
              height: 32.adaptSize,
              width: 32.adaptSize,
            ),
            SizedBox(height: 16.0),
            Text('This is the Text2Voice Page'),
          ],
        ),
      ),
    );
  }
}