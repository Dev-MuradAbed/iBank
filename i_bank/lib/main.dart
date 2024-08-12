import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'controllers/index.dart';
import 'utils/index.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent, // navigation bar color
      statusBarColor: Colors.transparent, // status bar color
      statusBarIconBrightness: Brightness.dark, // status bar icons' color
      systemNavigationBarIconBrightness:
          Brightness.dark, //navigation bar icons' color
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  Get.put(AppLanguageController());
  runApp(const MyApp());
}
