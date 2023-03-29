import 'package:flutter_architecture/data/my_services.dart';

class DummyService implements MyServices {
  @override
  bool getService() {
    return true;
  }
}
