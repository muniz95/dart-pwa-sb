import 'dart:math';
import "package:rxdart/rxdart.dart";

class IMC {
  final BehaviorSubject<double> _height = BehaviorSubject<double>.seeded(0);
  final BehaviorSubject<double> _weight = BehaviorSubject<double>.seeded(0);
  final BehaviorSubject<double> _imc = BehaviorSubject<double>();
  Stream<double> get height => _height.stream;
  Stream<double> get weight => _weight.stream;
  Stream<double> get imc => _imc.stream;
  
  init() => _imc.add(0);

  setHeight([double value = 0]) async {
    _height.add(value);
    setImc();
  }
  
  setWeight([double value = 0]) async {
    _weight.add(value);
    setImc();
  }
  
  setImc() {
    double h = _height.value / 100;
    double w = _weight.value;
    if (h > 0 && w > 0) {
      _imc.add(w / pow(h, 2));
    }
  }

  void dispose() {
    _height.close();
    _weight.close();
    _imc.close();
  }
}