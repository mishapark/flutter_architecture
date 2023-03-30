import 'package:flutter/material.dart';
import 'package:flutter_architecture/business/bloc_factory.dart';
import 'package:flutter_architecture/business/business.dart';
import 'package:provider/provider.dart';

import 'screens/my_home_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final MainBloc _mainBloc;

  @override
  void initState() {
    super.initState();
    _mainBloc = BlocFactory.instance.get<MainBloc>();
  }

  @override
  void dispose() {
    _mainBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => _mainBloc,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
