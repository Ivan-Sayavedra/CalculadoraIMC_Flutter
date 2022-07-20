import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_1/providers/datos_imc.dart';

// ignore: must_be_immutable
class BotonesSexo extends StatelessWidget {
  String sexo;
  BotonesSexo({Key? key, required this.sexo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final datosImc = Provider.of<DatosImc>(context);

    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blue.shade800)),
            onPressed: () {
              datosImc.sexo = sexo;
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  definirIcono(sexo),
                  size: 80.0,
                ),
                Text(
                  sexo,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  IconData? definirIcono(String sexo) {
    if (sexo == 'HOMBRE') {
      return Icons.male_rounded;
    } else {
      return Icons.female_rounded;
    }
  }
}
