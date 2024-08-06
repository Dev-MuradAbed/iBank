import '../../utils/index.dart';

class MyAppController extends GetxController {
  dynamic userData;
  dynamic settings;
  LocalStorage localStorage = LocalStorage();

  @override
  Future<void> onInit() async {
    super.onInit();
  }
}
