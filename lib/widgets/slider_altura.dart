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
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.blue),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            'ALTURA',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            '${altura.round()}',
            style: const TextStyle(color: Colors.white, fontSize: 36.0),
          ),
          Slider(
            value: altura,
            min: 100,
            max: 200,
            activeColor: Colors.white70,
            inactiveColor: Colors.white24,
            onChanged: (double newAltura) {
              setState(() {
                altura = newAltura;
              });
            },
          )
        ],
      ),
    );
  }
}
