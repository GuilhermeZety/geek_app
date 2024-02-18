import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

class CurrentSession {
  //SingleTon
  CurrentSession._();
  static final CurrentSession _instance = CurrentSession._();
  factory CurrentSession() => CurrentSession._instance;
  //
  Future<void> init() async {
    if (!kIsWeb) {
      String storageLocation = (await getApplicationDocumentsDirectory()).path;
      await FastCachedImageConfig.init(subDir: storageLocation, clearCacheAfter: const Duration(days: 15));
    }
  }
}
