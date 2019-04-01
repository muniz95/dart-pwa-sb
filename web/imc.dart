import 'dart:html';
import 'package:dart_pwa_sb/imc_bloc.dart';

void main() async {
  var state = new IMC()..init();
  Function height = (KeyboardEvent e) => state.setHeight((e.target as NumberInputElement).valueAsNumber);
  Function weight = (KeyboardEvent e) => state.setWeight((e.target as NumberInputElement).valueAsNumber);
  // state.height.listen((value) => querySelector('#streamHeight').text = value.toString());
  // state.weight.listen((value) => querySelector('#streamWeight').text = value.toString());
  state.imc.listen((value) => querySelector('#imc').text = value.toString());
  querySelector('#height').onKeyUp.listen(height);
  querySelector('#weight').onKeyUp.listen(weight);
}
