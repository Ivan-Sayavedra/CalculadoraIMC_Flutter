import 'package:flutter/material.dart';
import 'package:calculadora_imc/screens/home_screen.dart';

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
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 100.0,
              ),
              SizedBox(
                width: 250,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue[900])),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Empezar',
                            style: TextStyle(fontSize: 24),
                          ),
                          Icon(
                            Icons.play_arrow_rounded,
                            size: 35.0,
                          ),
                        ],
                      )),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                '(Próximamente nuevas funciones).',
                style: TextStyle(color: Colors.blue[900], fontSize: 14.0),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 100.0),
              Text(
                '- Desarrollado por "HISS" -',
                style: TextStyle(color: Colors.blue[900], fontSize: 12.0),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
