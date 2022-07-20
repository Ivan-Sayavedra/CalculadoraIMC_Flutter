import 'package:flutter/material.dart';
import 'package:tutorial_1/screens/home_screen.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Center(
        child: SizedBox(
          width: 250,
          height: 100,
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue[800])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Empezar',
                    style: TextStyle(fontSize: 24),
                  ),
                  Icon(
                    Icons.shortcut_rounded,
                    size: 35.0,
                  )
                ],
              )),
        ),
      ),
    );
  }
}
