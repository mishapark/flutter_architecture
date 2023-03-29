import 'package:flutter_architecture/data/my_services.dart';
import 'package:flutter_architecture/data/user_data.dart';

class DummyService implements MyServices {
  @override
  UserData getUser() {
    return const UserData(id: 1, name: 'Misha');
  }
}
