import 'package:flutter/material.dart';

class BotonCuenta extends StatefulWidget {
  const BotonCuenta({Key? key}) : super(key: key);

  @override
  State<BotonCuenta> createState() => _BotonCuentaState();
}

class _BotonCuentaState extends State<BotonCuenta> {
  int peso = 60;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.blue),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'PESO',
            style: TextStyle(color: Colors.white),
          ),
          const Text('63', style: TextStyle(color: Colors.white)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: (() {
                    setState(() {
                      peso++;
                    });
                  }),
                  icon: const Icon(
                    Icons.remove_circle,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: (() {
                    setState(() {
                      peso++;
                    });
                  }),
                  icon: const Icon(
                    Icons.add_circle,
                    color: Colors.white,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
