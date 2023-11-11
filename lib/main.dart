import 'package:flutter/material.dart';
import 'package:laboratorio_login_signup_forms/layout/layout.dart';


 //todo widget tiene un metodo build, los widget son CLASES
  //que sea el padre la const
  // ctrl + punto
  // ctrl + space
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Definir la ruta inicial
      routes: {
        '/': (BuildContext context) => const pagina_principal(),
        '/ingreso': (BuildContext context) => const ingreso_usuarios(),
        '/registro': (BuildContext context) => const registro_usuarios(),
        '/nosotros': (BuildContext context) => const acerca_de_nosotros(),
      },
    );
  }
}
