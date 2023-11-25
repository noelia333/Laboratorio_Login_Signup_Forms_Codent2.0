// ignore_for_file: camel_case_types, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';

class registro_usuarios extends StatefulWidget {
  const registro_usuarios({Key? key}) : super(key: key);

  @override
  _RegistroUsuariosState createState() => _RegistroUsuariosState();
}

class _RegistroUsuariosState extends State<registro_usuarios> {
  bool obscureText = true;
  TextEditingController nombres = TextEditingController();
  TextEditingController apellidos = TextEditingController();
  TextEditingController cedula = TextEditingController();
  TextEditingController correo = TextEditingController();
  TextEditingController contrasena = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Container(
                  height: 100,
                  width: 100,
                  child: Image.asset('src/imagenes/logo_justone.png'),
                ),
              )
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 1,
          actions: [
            TextButton(
              onPressed: () {
                // Acción cuando se presiona "Home"
                Navigator.pushNamed(context, '/');
              },
              child: const Text(
                'Home',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: TextButton(
                onPressed: () {
                  // Acción cuando se presiona "Acerca de Nosotros"
                  Navigator.pushNamed(context, '/nosotros');
                },
                child: const Text(
                  'Acerca de Nosotros',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: TextButton(
                onPressed: () {
                  // Acción cuando se presiona "Iniciar Sesión"
                  Navigator.pushNamed(context, '/ingreso');
                },
                child: const Text('Iniciar Sesión',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 16)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 100),
              child: TextButton(
                onPressed: () {
                  // Acción cuando se presiona "Registrarse"
                  Navigator.pushNamed(context, '/registro');
                },
                child: const Text(
                  'Registrarse',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 16),
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Row(
          children: [
            Container(
              width: 1100,
              child: Padding(
                padding: EdgeInsets.only(left: 25, top: 25, bottom: 25),
                child: Container(
                  height: 810.0, // Ajusta la altura según tu preferencia
                  width: 1100.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      fit: BoxFit.cover,
                      'https://images.unsplash.com/photo-1556155092-490a1ba16284?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 750,
              child: Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Container(
                  height: 640,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Registrarse',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff393839),
                            fontSize: 25),
                      ),
                      Text(
                        '¡Hola, Bienvenido a Just one click, regístrate para continuar',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Color(0xff393839),
                            fontSize: 16),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: TextField(
                          controller: nombres,
                          style: const TextStyle(fontSize: 20),
                          decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 218, 218, 218),
                                    width: 2.0),
                              ),
                              hintText: 'Nombres',
                              hintStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 190, 190, 190),
                                  fontSize: 16),
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(
                                      0xff52369d), // Establece un color transparente para quitar el color azul
                                ),
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextField(
                          controller: apellidos,
                          style: const TextStyle(fontSize: 20),
                          decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 218, 218, 218),
                                    width: 2.0),
                              ),
                              hintText: 'Apellidos',
                              hintStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 190, 190, 190),
                                  fontSize: 16),
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(
                                      0xff52369d), // Establece un color transparente para quitar el color azul
                                ),
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextField(
                          controller: cedula,
                          style: const TextStyle(fontSize: 20),
                          decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 218, 218, 218),
                                    width: 2.0),
                              ),
                              hintText: 'Cédula',
                              hintStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 190, 190, 190),
                                  fontSize: 16),
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(
                                      0xff52369d), // Establece un color transparente para quitar el color azul
                                ),
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextField(
                          controller: correo,
                          style: const TextStyle(fontSize: 20),
                          decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 218, 218, 218),
                                    width: 2.0),
                              ),
                              hintText: 'Correo electrónico',
                              hintStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 190, 190, 190),
                                  fontSize: 16),
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(
                                      0xff52369d), // Establece un color transparente para quitar el color azul
                                ),
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextField(
                          controller: contrasena,
                          obscureText: obscureText,
                          style: const TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 218, 218, 218),
                                    width: 2.0),
                              ),
                              hintText: 'Contraseña',
                              hintStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 190, 190, 190),
                                  fontSize: 16),
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.remove_red_eye_outlined),
                                onPressed: () {
                                  setState(() {
                                    // Usa setState para cambiar el estado
                                    obscureText = !obscureText;
                                  });
                                },
                              ),
                              border: const OutlineInputBorder(),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(
                                      0xff52369d), // Establece un color transparente para quitar el color azul
                                ),
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                              height: 60,
                              width: 750,
                              decoration: const BoxDecoration(
                                color: Color(0xff52369d),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: const Center(
                                  child: Text(
                                "Registrarse",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        )));
  }
}
