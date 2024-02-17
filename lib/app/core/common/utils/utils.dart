import 'dart:developer';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:geek_app/app/core/common/utils/toasting.dart';
import 'package:path_provider/path_provider.dart';

class Utils {
  static void copy(context, String text, {bool logged = false}) async {
    await Clipboard.setData(ClipboardData(text: text));
    Toasting.success(context, title: 'Copiado com sucesso!');
  }

  static Future<Uint8List> getAssetsBytes(String path) async {
    return await rootBundle.load(path).then((value) => value.buffer.asUint8List());
  }

  static Future<String?> getDownloadPath() async {
    Directory? directory;
    try {
      if (Platform.isIOS) {
        directory = await getApplicationDocumentsDirectory();
      } else {
        directory = Directory('/storage/emulated/0/Download');
        // Put file in global download folder, if for an unknown reason it didn't exist, we fallback
        // ignore: avoid_slow_async_io
        if (!await directory.exists()) directory = await getExternalStorageDirectory();
      }
    } catch (err) {
      log('Cannot get download folder path');
    }
    return directory?.path;
  }
}
