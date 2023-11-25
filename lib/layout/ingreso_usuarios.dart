// ignore_for_file: camel_case_types, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class ingreso_usuarios extends StatefulWidget {
  const ingreso_usuarios({Key? key}) : super(key: key);

  @override
  _IngresoUsuariosState createState() => _IngresoUsuariosState();
}

class _IngresoUsuariosState extends State<ingreso_usuarios> {
  bool obscureText = true;
  bool esCliente = false;
  bool esProfesional = false;

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
                      'https://images.unsplash.com/photo-1529539795054-3c162aab037a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
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
                  height: 600,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Iniciar Sesión',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff393839),
                            fontSize: 25),
                      ),
                      Text(
                        'Por favor digite sus credenciales para poder continuar',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: Color(0xff393839),
                            fontSize: 16),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 70),
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
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          children: [
                            Checkbox(
                              activeColor: Color(0xff52369d),
                              value: esCliente,
                              onChanged: (bool? value) {
                                setState(() {
                                  esCliente = value ?? false;
                                  esProfesional = false;
                                });
                              },
                            ),
                            const Text('Soy Cliente',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff393839),
                                    fontSize: 16)),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: esProfesional,
                            activeColor: Color(0xff52369d),
                            onChanged: (bool? value) {
                              setState(() {
                                esProfesional = value ?? false;
                                esCliente = false;
                              });
                            },
                          ),
                          const Text('Soy Profesional',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff393839),
                                  fontSize: 16)),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: GestureDetector(
                          onTap: () {
                            if (esCliente) {
                              Navigator.pushNamed(
                                  context, '/eleccion_servicio');
                            } else if (esProfesional) {
                              Navigator.pushNamed(
                                  context, '/agenda_profesional');
                            }
                          },
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
                                "Iniciar sesión",
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
        ))
        /*   Center(
        child: Container(
          width: 400.0,
          margin: const EdgeInsets.symmetric(vertical: 100.0),
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Inicia Sesión',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Usuario',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, ingresa tu usuario';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    PasswordTextField(controller: contrasena),
                    const SizedBox(height: 20.0),
                    Row(
                      children: [
                        Checkbox(
                          value: esCliente,
                          onChanged: (bool? value) {
                            setState(() {
                              esCliente = value ?? false;
                              esProfesional = false;
                            });
                          },
                        ),
                        const Text('Soy Cliente'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: esProfesional,
                          onChanged: (bool? value) {
                            setState(() {
                              esProfesional = value ?? false;
                              esCliente = false;
                            });
                          },
                        ),
                        const Text('Soy Profesional'),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        if (esCliente) {
                          Navigator.pushNamed(context, '/servicio');
                        } else if (esProfesional) {
                          Navigator.pushNamed(context, '/agenda_profesional');
                        }
                      },
                      child: const Text('Iniciar Sesión'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ), */
        /*  persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Just One Click',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Carrera 9 No. 45A - 44'),
                Text('desarrollowebprueba8@gmail.com'),
                Text('3182718849'),
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Acerca de Just One Click',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Contactanos'),
                Text('Acerca de nosotros'),
              ],
            ),
            Row(
              children: [
                Image.network(
                  'https://th.bing.com/th/id/OIP.FSQqD-ceBHOuC8DDnC7TjwHaHa?pid=ImgDet&w=800&h=800&rs=1',
                  height: 50.0,
                  width: 50.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 10.0),
                Image.network(
                  'https://th.bing.com/th/id/OIP.WKK-wC7LQNEuUH4qISxGxgHaHa?pid=ImgDet&rs=1',
                  height: 35.0,
                  width: 35.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 20.0),
                Image.network(
                  'https://th.bing.com/th/id/R.2a3c2e00d714005eed1f46469907cae0?rik=CgJtlS84Y22MLg&riu=http%3a%2f%2fwww.lineconect.com.br%2fimages_parceiros%2ffacebook_incone.png&ehk=KmT40jN24pH81lNP3VmNmJmYjxCyhUrpDvz%2fAkU0G9o%3d&risl=&pid=ImgRaw&r=0',
                  height: 30.0,
                  width: 30.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ], */
        );
  }
}
