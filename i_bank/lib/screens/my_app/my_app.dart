import 'package:common_ui_toolkit/common_ui_toolkit.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../../controllers/index.dart';
import '../../language/translation.dart';
import '../../utils/index.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLanguageController appLanguageController =
        Get.find<AppLanguageController>();
    return GetMaterialApp(
      locale: Locale(appLanguageController.appLocale),
      builder: (BuildContext context, Widget? child) {
        return ScrollConfiguration(
          behavior: MyScrollBehavior(),
          child: FlutterSmartDialog(
            child: child,
          ),
        );
      },
      // theme: ThemeData(
      //   fontFamily: appLanguageController.appLocale == keyArabicValue
      //       ? 'BahijJanna'
      //       : 'Futura',
      // ),
      translations: Translation(),
      theme: ThemeData(
        primaryColor: const Color(colorPrimary),
        scaffoldBackgroundColor: const Color(colorwhite),
        fontFamily: appLanguageController.appLocale == keyArabicValue
            ? 'BahijJanna'
            : 'Futura',
      ),
      // we use the fallbackLocale to handel any error in language files and use the en as default language
      fallbackLocale: const Locale('en'),
      debugShowCheckedModeBanner: false,
      initialRoute: routeSplash,
      getPages: <GetPage<dynamic>>[
        GetPage<dynamic>(
          name: routeSplash,
          page: () => Scaffold(
            appBar: AppBar(
              title: const Text('Bill components I bank'),
            ),
            body: const TicketScreen(),
          ),
        ),
      ],
    );
  }
}
