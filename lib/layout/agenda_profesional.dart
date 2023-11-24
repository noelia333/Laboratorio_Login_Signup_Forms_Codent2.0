// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class agenda_profesional extends StatelessWidget {
  const agenda_profesional({Key? key}) : super(key: key);

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
      body: const Center(
        
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
