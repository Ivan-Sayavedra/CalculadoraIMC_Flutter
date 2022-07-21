import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculadora_imc/providers/datos_imc.dart';

// ignore: must_be_immutable
class BotonCuenta extends StatelessWidget {
  String dimension;
  BotonCuenta({Key? key, required this.dimension}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final datosImc = Provider.of<DatosImc>(context);
    int textoValor() {
      int valor;
      (dimension == 'PESO') ? valor = datosImc.peso : valor = datosImc.edad;
      return valor;
    }

    return Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: Colors.blue[800]),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            dimension,
            style: const TextStyle(color: Colors.white),
          ),
          Text('${textoValor()}',
              style: const TextStyle(color: Colors.white, fontSize: 40.0)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
                onPressed: () {
                  (dimension == 'PESO') ? datosImc.peso-- : datosImc.edad--;
                },
                iconSize: 50.0,
                icon: const Icon(Icons.remove_circle_rounded,
                    color: Colors.white)),
            IconButton(
                onPressed: () {
                  (dimension == 'PESO') ? datosImc.peso++ : datosImc.edad++;
                },
                iconSize: 50.0,
                icon: const Icon(Icons.add_circle, color: Colors.white))
          ])
        ]));
  }
}
