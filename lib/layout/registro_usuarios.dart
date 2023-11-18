// ignore_for_file: camel_case_types, library_private_types_in_public_api

import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  const PasswordTextField({required this.controller, Key? key}) : super(key: key);

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: 'Contraseña',
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor, ingresa tu contraseña';
        }
        return null;
      },
    );
  }
}

class registro_usuarios extends StatefulWidget {
  const registro_usuarios({Key? key}) : super(key: key);

  @override
  _RegistroUsuariosState createState() => _RegistroUsuariosState();
}

class _RegistroUsuariosState extends State<registro_usuarios> {

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 20.0),
            Text(
              'Just One Click',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              // Acción cuando se presiona "Home"
              Navigator.pushNamed(context, '/');
            },
            child: const Text(
              'Home',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              // Acción cuando se presiona "Acerca de Nosotros"
              Navigator.pushNamed(context, '/nosotros');
            },
            child: const Text(
              'Acerca de Nosotros',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              // Acción cuando se presiona "Iniciar Sesión"
              Navigator.pushNamed(context, '/ingreso');
            },
            child: const Text(
              'Iniciar Sesión',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              // Acción cuando se presiona "Registrarse"
              Navigator.pushNamed(context, '/registro');
            },
            child: const Text(
              'Registrarse',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              // Acción cuando se presiona "Cliente"
              Navigator.pushNamed(context, '/cliente');
            },
            child: const Text(
              'Cliente',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              // Acción cuando se presiona "profesional"
              Navigator.pushNamed(context, '/profesional');
            },
            child: const Text(
              'Profesional',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(width: 20.0),
        ],
      ),
      body: Center(
        child: Container(
          width: 400.0, // Ancho máximo según tu diseño
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
                'Registro de Usuario',
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
                        labelText: 'Nombres',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, ingresa tus nombres';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Apellidos',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, ingresa tus apellidos';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Cédula',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, ingresa tu cédula';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Correo',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, ingresa tu correo';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    PasswordTextField(controller: _passwordController),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        // Agrega aquí la lógica para procesar el registro de usuario
                      },
                      child: const Text('Registrarse'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
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
      ],
    );
  }
}
