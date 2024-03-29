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

  // List clasificarEdad() {
  //   List _ref = [];
  //   if (19 < _edad && _edad <= 24) {
  //     _ref = [19, 24];
  //   } else if (25 <= _edad && _edad <= 34) {
  //     _ref = [20, 25];
  //   } else if (35 <= _edad && _edad <= 44) {
  //     _ref = [21, 26];
  //   } else if (45 <= _edad && _edad <= 54) {
  //     _ref = [22, 27];
  //   } else if (55 <= _edad && _edad <= 64) {
  //     _ref = [23, 28];
  //   } else if (_edad <= 65) {
  //     _ref = [24, 29];
  //   }
  //   return _ref;
  // }

  int clasificarEdad() {
    int posicion = 0;
    if (_edad <= 24) {
      posicion = 0;
    } else if (25 <= _edad && _edad <= 34) {
      posicion = 1;
    } else if (35 <= _edad && _edad <= 44) {
      posicion = 2;
    } else if (45 <= _edad && _edad <= 54) {
      posicion = 3;
    } else if (55 <= _edad && _edad <= 64) {
      posicion = 4;
    } else if (_edad <= 65) {
      posicion = 5;
    }
    return posicion;
  }

  List clasificar() {
    int posicion = clasificarEdad();
    List _ref = [
      clasificacion['bajo']?[posicion],
      clasificacion['normal']?[posicion],
      clasificacion['sobrepeso']?[posicion],
    ];
    return _ref;
  }

  Map calcularImc() {
    Map resultado = {'valor': 0.0, 'clasificacion': 'Indefinida'};
    double alturaEnMetros = _altura / 100;
    _imc = _peso / (alturaEnMetros * alturaEnMetros);
    resultado['valor'] = _imc;
    List referencia = clasificar();
    if (_imc < referencia[0]) {
      resultado['clasificacion'] = 'Bajo peso';
    } else if (_imc < referencia[1]) {
      resultado['clasificacion'] = 'Normal';
    } else if (_imc < referencia[2]) {
      resultado['clasificacion'] = 'Sobrepeso';
    } else {
      resultado['clasificacion'] = 'Obesidad';
    }

    return resultado;
  }

  double get imc => _imc;
}

Map<String, List<double>> clasificacion = {
  'bajo': [19, 20, 21, 22, 23, 24],
  'normal': [24, 25, 26, 27, 28, 29],
  'sobrepeso': [29, 29.5, 30, 30.5, 31, 31.5],
};
