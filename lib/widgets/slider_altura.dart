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
                '${altura.round()}',
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
            value: altura,
            min: 100,
            max: 200,
            activeColor: Colors.white,
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
