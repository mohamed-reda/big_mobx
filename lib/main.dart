import 'package:bigmobx/store/counter/counter_page.dart';
import 'package:flutter/material.dart';

import 'store/hard_counter/hard_counter_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HardCounterPage(),
    );
  }
}
