import 'package:flutter_architecture/data/dummy_service.dart';
import 'package:flutter_architecture/data/my_services.dart';
import 'package:get_it/get_it.dart';

class ServiceProvider {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  static final instance = ServiceProvider();

  void initialize() {
    _getIt.registerLazySingleton<MyServices>(() => DummyService());
  }

  void dispose() {
    _getIt.unregister<MyServices>();
  }
}
