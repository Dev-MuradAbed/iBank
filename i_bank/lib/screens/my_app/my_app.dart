import 'package:common_ui_toolkit/common_ui_toolkit.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../../controllers/index.dart';
import '../../utils/index.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLanguageController appLanguageController =
        Get.find<AppLanguageController>();
    return GetMaterialApp(
      builder: (BuildContext context, Widget? child) {
        return ScrollConfiguration(
          behavior: MyScrollBehavior(),
          child: FlutterSmartDialog(
            child: child,
          ),
        );
      },
      theme: ThemeData(
        fontFamily: appLanguageController.appLocale == keyArabicValue
            ? 'BahijJanna'
            : 'Futura',
      ),
    );
  }
}
