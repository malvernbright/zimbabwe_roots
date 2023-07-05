import 'package:flutter/services.dart' show rootBundle;

class FilesOp {
  static Future<String> loadAsset(String fileAsset) async {
    return await rootBundle.loadString('assets/data/$fileAsset');
  }
}
