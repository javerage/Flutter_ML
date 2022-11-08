import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:imagepicker/screens/camera_screen.dart';
import 'package:imagepicker/screens/camera_view.dart';

late List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();
  runApp(CameraScreen());
}
