import 'dart:async';
import 'package:flutter_architecture/data/data.dart';

class MainBloc {
  final MyServices myServices;
  final StreamController<int> _eventsController = StreamController();

  MainBloc({
    required this.myServices,
  });

  void add(int event) {
    if (_eventsController.isClosed) return;

    _eventsController.add(event);
  }

  void dispose() {
    _eventsController.close();
  }
}
