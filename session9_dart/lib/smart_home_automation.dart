/* Exercise 2: Smart Home Automation
 A smart home system controls different devices such as lights, air conditioners, and security
 cameras.
 Each device has an on and off functionality.
 Some devices have additional functionalities, e.g., adjusting temperature or motion detection.
 The system should allow multiple devices to be controlled together.
 Question:
 How would you design a system where different devices share common functionalities but also have
 unique behaviors?
*/
void main() {
  var light = Light(name: 'Reseption');
  var conditioner = AirConditioner(name: 'Reseption');
  var camera = SecurityCamera(name: 'Street camera');

  var homeDevices = SmartHomeDevicesManager();
  homeDevices.addDevice(light);
  homeDevices.addDevice(conditioner);
  homeDevices.addDevice(camera);

  homeDevices.turnAllOn();
  conditioner.setTemperature(44);
  camera.enableMotionDetection();
}

abstract class SmartHomeDevices {
  String name;
  bool isOn = false;

  SmartHomeDevices({required this.name});

  void turnOn() {
    isOn = true;
    print('$name is turned ON.');
  }

  void trunOff() {
    isOn = false;
    print('$name is turned OFF.');
  }

  void status() {
    print('$name is currently ${isOn ? "ON" : "OFF"}.');
  }
}

class Light extends SmartHomeDevices {
  Light({required String name}) : super(name: name);
}

class AirConditioner extends SmartHomeDevices {
  int temperature = 24;
  AirConditioner({required super.name});
  setTemperature(int temp) {
    print("$name tempreture is $temperature");
  }
}

class SecurityCamera extends SmartHomeDevices {
  bool motionDetection = false;
  SecurityCamera({required String name}) : super(name: name);

  void enableMotionDetection() {
    motionDetection = true;
    print('$name motion detection enabled.');
  }

  void disableMotionDetection() {
    motionDetection = false;
    print('$name motion detection disabled.');
  }
}

class SmartHomeDevicesManager {
  List<SmartHomeDevices> devices = [];
  void addDevice(SmartHomeDevices device) {
    devices.add(device);
    print('${device.name} added to smart Home Devices.');
  }

  void turnAllOn() {
    for (var device in devices) {
      device.turnOn();
    }
  }

  void turnAllOff() {
    for (var device in devices) {
      device.trunOff();
    }
  }

  void displayAllStatuses() {
    for (var device in devices) {
      device.status();
    }
  }
}
