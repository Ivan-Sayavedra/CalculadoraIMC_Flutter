import 'package:flutter/material.dart';

class DatosImc with ChangeNotifier {
  String _sexo = 'No def.';
  double _altura = 160.0;
  int _peso = 60;
  int _edad = 25;
  late double _imc;

  String get sexo => _sexo;

  set sexo(String sexo) {
    _sexo = sexo;
    notifyListeners();
  }

  double get altura => _altura;

  set altura(double altura) {
    _altura = altura;
    notifyListeners();
  }

  int get peso => _peso;

  set peso(int peso) {
    _peso = peso;
    notifyListeners();
  }

  int get edad => _edad;

  set edad(int edad) {
    _edad = edad;
    notifyListeners();
  }

  List clasificarEdad() {
    List _ref = [];
    if (19 < _edad && _edad <= 24) {
      _ref = [19, 24];
    } else if (25 <= _edad && _edad <= 34) {
      _ref = [20, 25];
    } else if (35 <= _edad && _edad <= 44) {
      _ref = [21, 26];
    } else if (45 <= _edad && _edad <= 54) {
      _ref = [22, 27];
    } else if (55 <= _edad && _edad <= 64) {
      _ref = [23, 28];
    } else if (_edad <= 65) {
      _ref = [24, 29];
    }
    return _ref;
  }

  Map calcularImc() {
    Map resultado = {'valor': 0.0, 'clasificacion': 'Indefinida'};
    // String categoria = 'No definida';
    double alturaEnMetros = _altura / 100;
    _imc = _peso / (alturaEnMetros * alturaEnMetros);
    resultado['valor'] = _imc;
    List referencia = clasificarEdad();
    if (_imc < referencia[0]) {
      resultado['clasificacion'] = 'Peso inferior al normal';
    } else if (_imc < referencia[1]) {
      resultado['clasificacion'] = 'Normal';
    } else if (_imc < 30) {
      resultado['clasificacion'] = 'Peso superior al normal';
    } else {
      resultado['clasificacion'] = 'Obesidad';
    }

    return resultado;
  }

  double get imc => _imc;
}
