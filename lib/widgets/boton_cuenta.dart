import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BotonCuenta extends StatefulWidget {
  int valor;
  String dimension;
  BotonCuenta({Key? key, required this.valor, required this.dimension})
      : super(key: key);
  @override
  State<BotonCuenta> createState() => _BotonCuentaState();
}

class _BotonCuentaState extends State<BotonCuenta> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.blue[800]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.dimension,
            style: const TextStyle(color: Colors.white),
          ),
          Text('${widget.valor}',
              style: const TextStyle(color: Colors.white, fontSize: 40.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: (() {
                    setState(() {
                      widget.valor--;
                    });
                  }),
                  iconSize: 50.0,
                  icon: const Icon(
                    Icons.remove_circle,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: (() {
                    setState(() {
                      widget.valor++;
                    });
                  }),
                  iconSize: 50.0,
                  icon: const Icon(Icons.add_circle, color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
