import 'package:flutter/material.dart';
import 'package:laboratorio_login_signup_forms/layout/layout.dart';


 //todo widget tiene un metodo build, los widget son CLASES
  //que sea el padre la const
  // ctrl + punto
  // ctrl + space
void main() => runApp( const MyApp() );

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ingreso_usuarios(),
      routes: {
        'registro': ( BuildContext context ) => const registro_usuarios()
      }
    );
    
  }
}