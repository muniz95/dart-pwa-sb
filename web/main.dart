import 'dart:html';
import 'dart:async';
import 'dart:math';
import "package:rxdart/rxdart.dart";

void main() async {
  final BehaviorSubject<int> _value = BehaviorSubject<int>();
  
  _value.stream.listen((value) => print('value inserted: $value'));
  querySelector('body').onClick.listen((_) => _value.add(new Random().nextInt(100)));
  querySelector('#output').text = 'teste';
}
