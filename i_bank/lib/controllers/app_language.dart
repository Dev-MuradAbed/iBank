import 'dart:ui';

import '../utils/index.dart';

class AppLanguageController extends GetxController {
  // String appLocale = window.locale.toString().split('_')[0];
  String appLocale =
      PlatformDispatcher.instance.locale.toString().split('_')[0];
  LocalStorage localStorage = LocalStorage();

  @override
  Future<void> onInit() async {
    super.onInit();
    final dynamic languageCode =
        await localStorage.getFromStorage(key: languageKey);
    appLocale = languageCode ?? appLocale;
    consoleLog('\x1B[33m App Language: $appLocale');
    Get.updateLocale(Locale(appLocale));
    update();
  }
}
