import 'package:mobx/mobx.dart';

class Counter with Store {
  Observable counter = Observable(0);
//  int count = 0;

  Action increment;
  Counter() {
    increment = Action(() {
      counter.value++;
    });
  }

//  @action
//  void inc() {
//    count++;
//  }
}
