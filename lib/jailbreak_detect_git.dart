
import 'dart:async';

import 'package:flutter/services.dart';

class JailbreakDetectGit {
  static const MethodChannel _channel =
      const MethodChannel('jailbreak_detect_git');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
