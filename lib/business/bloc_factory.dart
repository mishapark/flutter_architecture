import 'package:flutter_architecture/business/main_bloc.dart';
import 'package:flutter_architecture/data/data.dart';
import 'package:get_it/get_it.dart';

class BlocFactory {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  static final instance = BlocFactory();

  void initialize() {
    //GETTING SERVICE FROM DATA LAYER
    ServiceProvider.instance.initialize();
    ServiceProvider.instance.get<MyServices>();

    _getIt.registerFactory<MainBloc>(
      () => MainBloc(
        myServices: ServiceProvider.instance.get<MyServices>(),
      ),
    );
  }
}
