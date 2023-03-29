import 'package:flutter/material.dart';
import 'package:flutter_architecture/presentation/my_app.dart';

import 'business/bloc_factory.dart';

void main() {
  BlocFactory.instance.initialize();
  runApp(const MyApp());
}
