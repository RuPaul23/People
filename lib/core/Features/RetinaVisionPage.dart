import 'package:flutter/material.dart';
import 'package:camera/camera.dart'; // Import the camera package
import 'package:people/core/app_export.dart';
import 'package:people/core/utils/image_constant.dart';
import 'package:people/widgets/custom_image_view.dart';

class RetinaVisionPage extends StatefulWidget {
  @override
  _RetinaVisionPageState createState() => _RetinaVisionPageState();
}

class _RetinaVisionPageState extends State<RetinaVisionPage> {
  late CameraController _controller;
  late List<CameraDescription> cameras;

  @override
  void initState() {
    super.initState();
    initializeCamera();
  }

  Future<void> initializeCamera() async {
    cameras = await availableCameras();
    _controller = CameraController(cameras[0], ResolutionPreset.veryHigh); // Set ResolutionPreset.veryHigh for 4:3
    await _controller.initialize();
    if (!mounted) {
      return;
    }
    setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_controller.value.isInitialized) {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('RetinaVision'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: CameraPreview(_controller),
            ),
            SizedBox(height: 16.0),
            Text('This is the RetinaVision Page'),
          ],
        ),
      ),
    );
  }
}
