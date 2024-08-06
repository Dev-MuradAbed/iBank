import 'package:get_storage/get_storage.dart';

class LocalStorage {
  /// Write in storage
  Future<void> saveToStorage({
    required String key,
    dynamic value,
  }) async {
    await GetStorage().write(key, value);
  }

  /// Read from storage
  Future<dynamic> getFromStorage({
    required String key,
  }) async {
    return await GetStorage().read(key);
  }

  /// Remove from storage
  Future<void> removeFromStorage({
    required String key,
  }) async {
    await GetStorage().remove(key);
  }

  Future<void> erase() async {
    await GetStorage().erase();
  }
}
