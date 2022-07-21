import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculadora_imc/providers/datos_imc.dart';

class SliderAltura extends StatelessWidget {
  const SliderAltura({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final datosImc = Provider.of<DatosImc>(context);
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.blue[800]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'ALTURA',
            style: TextStyle(color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 50.0,
              ),
              Text(
                '${datosImc.altura.round()}',
                style: const TextStyle(color: Colors.white, fontSize: 36.0),
              ),
              const SizedBox(
                width: 50.0,
                child: Text(
                  ' cm',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ],
          ),
          Slider(
            value: datosImc.altura,
            min: 100,
            max: 200,
            activeColor: Colors.white,
            inactiveColor: Colors.white24,
            onChanged: (double newAltura) {
              datosImc.altura = newAltura;
            },
          )
        ],
      ),
    );
  }
}
