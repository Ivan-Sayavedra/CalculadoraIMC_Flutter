import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_1/providers/datos_imc.dart';
import 'package:tutorial_1/screens/inicio.dart';

class Resultado extends StatelessWidget {
  const Resultado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final datosImc = Provider.of<DatosImc>(context);
    int valor = datosImc.calcularImc()['valor'].round();
    String clasificacion = datosImc.calcularImc()['clasificacion'];
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
          title: const Text(
            "Calculadora IMC",
          ),
          elevation: 5,
          centerTitle: true,
          backgroundColor: Colors.blue[900]),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const TablaIMC(),
          Text(
            'Resultado:',
            style: TextStyle(color: Colors.blue[900], fontSize: 24),
          ),
          const SizedBox(height: 10),
          Text(
            '$valor',
            style: TextStyle(
                color: Colors.blue[900],
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Clasificación:',
            style: TextStyle(color: Colors.blue[900], fontSize: 24),
          ),
          const SizedBox(height: 10),
          Text(
            clasificacion,
            style: TextStyle(
                color: Colors.blue[900],
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ],
      )),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.keyboard_return_rounded),
      //   backgroundColor: Colors.blue[900],
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (context) => const Inicio()),
      //     );
      //   },
      // ),
    );
  }
}
