import 'package:common_ui_toolkit/common_ui_toolkit.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

import '../../utils/index.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (BuildContext context, Widget? child) {
        return ScrollConfiguration(
          behavior: MyScrollBehavior(),
          child: FlutterSmartDialog(
            child: child,
          ),
        );
      },
    );
  }
}
