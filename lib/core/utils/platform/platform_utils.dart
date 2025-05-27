import 'dart:io';

abstract class PlatformUtils {
  static bool get isMobile => Platform.isAndroid || Platform.isIOS;
}
