// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class acerca_de_nosotros extends StatelessWidget {
  const acerca_de_nosotros({Key? key}) : super(key: key);

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
          const SizedBox(width: 20.0),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(120.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Acerca de Just One Click',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40.0),
            _buildSection(
              title: 'Introducción',
              content:
                  'En un mundo dinámico donde el tiempo es un recurso precioso, la búsqueda de una cita conveniente en barberías y peluquerías puede convertirse en un verdadero desafío. El ritmo acelerado de la vida moderna nos exige soluciones más eficientes y accesibles para mantenernos bien cuidados sin complicaciones innecesarias. Es en este contexto que nace nuestra visión de simplificar y transformar la forma en que reservamos nuestros servicios de cuidado personal.',
            ),
            const SizedBox(height: 20.0),
            _buildSection(
              title: 'Problemática',
              content:
                  'La problemática en cuestión giraba en torno a la dificultad de asegurar una cita conveniente en barberías y peluquerías. Nos dimos cuenta de que esta tarea, aparentemente sencilla, era a menudo una fuente de frustración. Las largas esperas, las llamadas telefónicas interminables, la falta de opciones de horario y la incertidumbre al no conocer al estilista o barbero que nos atendería eran solo algunos de los obstáculos que enfrentábamos. Fue entonces cuando surgió la idea de resolver esta problemática de una vez por todas. Aprovechando nuestra experiencia en desarrollo web, decidimos crear una plataforma que simplificara la forma en que las personas reservaban sus servicios de cuidado personal.',
            ),
            const SizedBox(height: 20.0),
            _buildSection(
              title: 'Valor Agregado',
              content:
                  'Nuestra página web se diferencia al proporcionar una solución completa para aquellos que buscan servicios de belleza y cuidado personal a domicilio, con una amplia gama de profesionales y características que mejoran la experiencia del usuario. Nuestro enfoque en la comunidad y la comodidad del cliente es lo que nos distingue de las otras plataformas disponibles en el mercado, proporcionando un valor agregado tanto para profesionales como para usuarios.',
            ),
            const SizedBox(height: 20.0),
            _buildSection(
              title: 'Objetivo',
              content:
                  'Desarrollar una plataforma web de agendamiento/reserva de espacios en barberías y/o salones de belleza que que permita a los clientes apartar sus servicios de belleza preferidos,con la opción de seleccionar a su barbero favorito, mejorando así la experiencia del usuario al proporcionar un proceso de reserva más personalizado y conveniente.',
            ),
          ],
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

  Widget _buildSection({required String title, required String content}) {
    return Container(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(content),
        ],
      ),
    );
  }
}
