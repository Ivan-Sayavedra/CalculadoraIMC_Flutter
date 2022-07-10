import 'package:flutter/material.dart';
import 'package:tutorial_1/widgets/boton_cuenta.dart';
import 'package:tutorial_1/widgets/botones_sexo.dart';
import 'package:tutorial_1/widgets/slider_altura.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // const fs30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora IMC"),
        elevation: 5,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                BotonesSexo(
                  sexo: 'HOMBRE',
                ),
                BotonesSexo(
                  sexo: 'MUJER',
                ),
              ],
            )),
            const Expanded(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: SliderAltura(),
            )),
            Expanded(
              child: Row(
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: BotonCuenta(),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: BotonCuenta(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
