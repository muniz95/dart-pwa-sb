import 'dart:html';
import 'package:dart_pwa_sb/counter_bloc.dart';

void main() async {
  var state = new Counter()..init();
  state.counter.listen((value) => querySelector('#output').text = value.toString());
  querySelector('#increment').onClick.listen((_) => state.increment());
  querySelector('#decrement').onClick.listen((_) => state.decrement());
}
