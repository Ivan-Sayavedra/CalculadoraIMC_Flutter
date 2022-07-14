import 'package:flutter/material.dart';

class DatosImc with ChangeNotifier {
  late String sexo;
  late double altura;
  late int peso;
  late int edad;
  Map data = {};

  Map get datosImc {
    sexo = data['sexo'] ?? 'No establecido';
    altura = data['altura'] ?? 0.0;
    peso = data['peso'] ?? 0;
    edad = data['edad'] ?? 0;
    return data;
  }

  set datosImc(Map datos) {
    sexo = datos['sexo'];
    altura = datos['altura'];
    peso = datos['peso'];
    edad = datos['edad'];

    notifyListeners();
  }
}
