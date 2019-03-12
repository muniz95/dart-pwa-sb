import 'dart:html';
import 'dart:async';
import 'dart:math';
import "package:rxdart/rxdart.dart";
import 'package:collection/collection.dart';

void main() async {
  // final BehaviorSubject<int> _value = BehaviorSubject<int>();
  
  // _value.stream.listen((value) => print('value inserted: $value'));
  // querySelector('body').onClick.listen((_) => _value.add(new Random().nextInt(100)));
  // querySelector('#output').text = 'teste';
  const konamiKeyCodes = const <int>[
    KeyCode.UP,
    KeyCode.UP,
    KeyCode.DOWN,
    KeyCode.DOWN,
    KeyCode.LEFT,
    KeyCode.RIGHT,
    KeyCode.LEFT,
    KeyCode.RIGHT,
    KeyCode.B,
    KeyCode.A];

  final result = querySelector('#output');
  final keyUp = new Observable<KeyboardEvent>(document.onKeyUp);

  keyUp
    .map((event) => event.keyCode)
    .bufferCount(10, 1)
    .where((lastTenKeyCodes) => const ListEquality<int>().equals(lastTenKeyCodes, konamiKeyCodes))
    .listen((_) => result.innerHtml = 'KONAMI!');
}
