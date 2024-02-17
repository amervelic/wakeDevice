
import 'wake_device_platform_interface.dart';

class Device {
  Future<String?> getPlatformVersion() {
    return WakeDevicePlatform.instance.getPlatformVersion();
  }

  Future<void> wakeUp(){
    return WakeDevicePlatform.instance.wakeUp();
  }
}
