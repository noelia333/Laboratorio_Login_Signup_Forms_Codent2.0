// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class acerca_de_nosotros extends StatelessWidget {
  const acerca_de_nosotros({Key? key}) : super(key: key);

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: Text('Acerca de Just One Click',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff393839))),
            ),
            SizedBox(height: 40.0),
            Padding(
              padding: EdgeInsets.only(left: 150, right: 150, bottom: 60),
              child: _buildSection(
                url: 'src/imagenes/Introduccion.jpg',
                title: 'Introducción',
                content:
                    'En un mundo dinámico donde el tiempo es un recurso precioso, la búsqueda de una cita conveniente en barberías y peluquerías puede convertirse en un verdadero desafío. El ritmo acelerado de la vida moderna nos exige soluciones más eficientes y accesibles para mantenernos bien cuidados sin complicaciones innecesarias. Es en este contexto que nace nuestra visión de simplificar y transformar la forma en que reservamos nuestros servicios de cuidado personal.',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 150, right: 150, bottom: 60),
              child: _buildSection(
                url: 'src/imagenes/Problematica.jpg',
                title: 'Problemática',
                content:
                    'La problemática en cuestión giraba en torno a la dificultad de asegurar una cita conveniente en barberías y peluquerías. Nos dimos cuenta de que esta tarea, aparentemente sencilla, era a menudo una fuente de frustración. Las largas esperas, las llamadas telefónicas interminables, la falta de opciones de horario y la incertidumbre al no conocer al estilista o barbero que nos atendería eran solo algunos de los obstáculos que enfrentábamos. Fue entonces cuando surgió la idea de resolver esta problemática de una vez por todas. Aprovechando nuestra experiencia en desarrollo web, decidimos crear una plataforma que simplificara la forma en que las personas reservaban sus servicios de cuidado personal.',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 150, right: 150, bottom: 60),
              child: _buildSection(
                url: 'src/imagenes/Valor_agregado.jpg',
                title: 'Valor Agregado',
                content:
                    'Nuestra página web se diferencia al proporcionar una solución completa para aquellos que buscan servicios de belleza y cuidado personal a domicilio, con una amplia gama de profesionales y características que mejoran la experiencia del usuario. Nuestro enfoque en la comunidad y la comodidad del cliente es lo que nos distingue de las otras plataformas disponibles en el mercado, proporcionando un valor agregado tanto para profesionales como para usuarios.',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 150, right: 150, bottom: 60),
              child: _buildSection(
                url: 'src/imagenes/Objetivo.jpg',
                title: 'Objetivo',
                content:
                    'Desarrollar una plataforma web de agendamiento/reserva de espacios en barberías y/o salones de belleza que que permita a los clientes apartar sus servicios de belleza preferidos,con la opción de seleccionar a su barbero favorito, mejorando así la experiencia del usuario al proporcionar un proceso de reserva más personalizado y conveniente.',
              ),
            ),
          ],
        ),
      ),
      /*     persistentFooterButtons: [
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

  Widget _buildSection(
      {required url, required String title, required String content}) {
    return Container(
        height: 250,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFB6C6D4),
                spreadRadius: -8,
                blurRadius: 21.0,
                offset: Offset(10, 10),
              ),
              BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 0.5),
                blurRadius: 6,
                offset: Offset(-3, -4),
              )
            ]),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(url)),
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff393839))),
                  const SizedBox(height: 10.0),
                  Container(
                      width: 1150,
                      child: Text(
                        content,
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff393839)),
                      )),
                ],
              ),
            ),
          ],
        ));
  }
}
