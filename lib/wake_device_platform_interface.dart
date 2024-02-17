import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'wake_device_method_channel.dart';

abstract class WakeDevicePlatform extends PlatformInterface {
  /// Constructs a WakeDevicePlatform.
  WakeDevicePlatform() : super(token: _token);

  static final Object _token = Object();

  static WakeDevicePlatform _instance = MethodChannelWakeDevice();

  /// The default instance of [WakeDevicePlatform] to use.
  ///
  /// Defaults to [MethodChannelWakeDevice].
  static WakeDevicePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WakeDevicePlatform] when
  /// they register themselves.
  static set instance(WakeDevicePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> wakeUp(){
    throw UnimplementedError('wakeDevice() has not been implemented.');
  }
}
