import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculadora_imc/screens/resultado.dart';
import 'package:calculadora_imc/widgets/boton_cuenta.dart';
import 'package:calculadora_imc/widgets/botones_sexo.dart';
import 'package:calculadora_imc/widgets/slider_altura.dart';

import '../providers/datos_imc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final datosImc = Provider.of<DatosImc>(context);
    validarSexo(vSexo) {
      if (vSexo == null) {
        return 'No definido';
      } else {
        return vSexo;
      }
    }

    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Text(
          "Calculadora IMC",
        ),
        elevation: 5,
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 60.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                BotonesSexo(
                  sexo: 'HOMBRE',
                ),
                BotonesSexo(
                  sexo: 'MUJER',
                ),
              ],
            )),
            SizedBox(
                height: 30.0,
                child: Center(
                  child: Text(
                    'Seleccionado: ${validarSexo(datosImc.sexo)}',
                    style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                )),
            const Expanded(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: SliderAltura(),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BotonCuenta(
                        dimension: 'PESO',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BotonCuenta(
                        dimension: 'EDAD',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow_rounded),
        backgroundColor: Colors.blue[900],
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Resultado()),
          );
        },
      ),
    );
  }
}
