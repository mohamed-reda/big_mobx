//import 'dart:developer';
import 'package:bigmobx/store/counter/counter.dart';
import 'package:bigmobx/store/hard_counter/hard_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

// ignore: must_be_immutable
class HardCounterPage extends StatelessWidget {
  HardCounterPage({Key key}) : super(key: key);
  CounterStore _counter = CounterStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobx'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Observer(
              builder: (context) {
                return Text(
                  '${_counter.counter}',
                  style: Theme.of(context).textTheme.display1,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.increment.call();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
