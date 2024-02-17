import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'wake_device_platform_interface.dart';

/// An implementation of [WakeDevicePlatform] that uses method channels.
class MethodChannelWakeDevice extends WakeDevicePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('wake_device');

  @override
  Future<void> wakeUp() async {
    return await methodChannel.invokeMethod<void>('wakeDevice');
  }

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
