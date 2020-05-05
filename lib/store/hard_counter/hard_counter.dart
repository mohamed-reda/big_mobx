import 'package:mobx/mobx.dart';
//1 the same name of this dart file
part 'hard_counter.g.dart';

//2
class CounterStore = HardCounter with _$CounterStore;

//3 abst.. wi..
abstract class HardCounter with Store {
//4
  @observable
  int counter = 0;
//5
  @action
  void increment() {
    counter++;
  }
//  flutter pub run build_runner build
}
