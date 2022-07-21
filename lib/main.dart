import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculadora_imc/providers/datos_imc.dart';
// import 'package:calculadora_imc/screens/home_screen.dart';
import 'package:calculadora_imc/screens/inicio.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => DatosImc()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Inicio());
  }
}
