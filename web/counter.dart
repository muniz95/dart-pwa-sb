import 'dart:html';
import 'package:dart_pwa_sb/counter_bloc.dart';

void main() async {
  var state = Counter()..init();
  Function increment = (MouseEvent e) => state.increment();
  Function decrement = (MouseEvent e) => state.decrement();
  state.counter.listen((value) => querySelector('#output').text = value.toString());
  querySelector('#increment').onClick.listen(increment);
  querySelector('#decrement').onClick.listen(decrement);
}
