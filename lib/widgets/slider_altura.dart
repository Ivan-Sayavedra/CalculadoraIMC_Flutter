import 'package:flutter/material.dart';

class SliderAltura extends StatefulWidget {
  const SliderAltura({Key? key}) : super(key: key);

  @override
  State<SliderAltura> createState() => _SliderAlturaState();
}

class _SliderAlturaState extends State<SliderAltura> {
  double altura = 160;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          'ALTURA',
          style: TextStyle(color: Colors.blue),
        ),
        Text(
          '${altura.round()}',
          style: const TextStyle(color: Colors.blue, fontSize: 36.0),
        ),
        Slider(
          value: altura,
          min: 100,
          max: 200,
          onChanged: (double newAltura) {
            setState(() {
              altura = newAltura;
            });
          },
        )
      ],
    );
  }
}
