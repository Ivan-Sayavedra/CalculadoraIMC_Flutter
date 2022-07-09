import 'package:flutter/material.dart';

class BotonesSexo extends StatelessWidget {
  const BotonesSexo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          //ignore: todo
          //TODO: Buscar como hacer caja con bordes redondeados.
          decoration: ),
          child: Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.male_rounded),
                color: Colors.blue,
              ),
              const Text(
                'HOMBRE',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.female_rounded),
              color: Colors.blue,
            ),
            const Text('MUJER', style: TextStyle(color: Colors.blue)),
          ],
        )
      ],
    );
  }
}
