// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class usuarios extends StatelessWidget {
  const usuarios({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 300.0),
                    child: Text(
                      'Ya puedes verte bien sin salir de casa',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 180.0),
                    child: Image.network(
                      'https://img77.uenicdn.com/image/upload/v1551702236/category/shutterstock_1028333383.jpg',
                      height: 400.0,
                      width: 800.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40.0),
              const Text(
                'AGENDA TUS SERVICIOS DE BELLEZA EN MINUTOS',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCard(
                    'https://flow-living-production.s3.eu-west-1.amazonaws.com/public/Icon_Flow_Fuel_fdbbc37101.png',
                    'Nuevos servicios de belleza',
                    'Llevaremos todo el mundo de la belleza o cuidado personal a tu hogar o en el lugar donde te encuentres; peinados, masajes, manicure, pedicure, entre otros.',
                  ),
                  _buildCard(
                    'https://png.pngtree.com/png-vector/20190429/ourmid/pngtree-vector-team-icon-png-image_997221.jpg',
                    'Enfoque en la comunidad',
                    'Va dirigido a personas que enfrentan limitaciones de movilidad debido a enfermedades, personas mayores o aquellos con agendas ocupadas que no pueden desplazarse a un salón de belleza.',
                  ),
                  _buildCard(
                    'https://tse1.mm.bing.net/th/id/OIP.93HGpvNnbqwWCY9CtdNsNAHaHa?pid=ImgDet&w=512&h=512&rs=1',
                    'Una nueva sección para que te inspires',
                    'Puedes encontrar los trabajos que algunas de nuestras especialistas han realizado.',
                  ),
                ],
              ),
              const SizedBox(height: 40.0),
              const Text(
                '¿CÓMO FUNCIONA JUST ONE CLICK?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40.0),
              Column(
                children: [
                  _buildImageWithTextAndDescription(
                    'https://cdn-icons-png.flaticon.com/512/9759/9759052.png',
                    'Selecciona el servicio de belleza',
                    'Que se ajuste a tus necesidades, puedes agregar invitados y cuantos especialistas quieres',
                  ),
                  const SizedBox(height: 20.0),
                  _buildImageWithTextAndDescription(
                    'https://static.vecteezy.com/system/resources/previews/019/994/204/large_2x/calendar-icon-vector.jpg',
                    'Elige fecha y día',
                    'Para que tus servicios de belleza se realicen, nos adaptamos a tu agenda y disponibilidad',
                  ),
                  const SizedBox(height: 20.0),
                  _buildImageWithTextAndDescription(
                    'https://thumbs.dreamstime.com/b/white-heart-red-speech-bubble-vector-love-icon-love-symbol-heart-speech-bubble-vector-love-icon-121198143.jpg',
                    'Califica nuestro servicio',
                    'Para garantizarte la mejor atención, ayudanos a mejorar cada dia con tu retroalimentacion',
                  ),
                  const SizedBox(height: 40.0),
                ],
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

  Widget _buildCard(String imageUrl, String title, String text) {
    return Container(
      width: 400.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: SizedBox(
        width: double.infinity,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  imageUrl,
                  height: 100.0,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 15.0
                  ),
                  textAlign: TextAlign.justify,
                  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

Widget _buildImageWithTextAndDescription(String imageUrl, String boldText, String description) {
  return Center(
    child: SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Centra la fila horizontalmente
        children: [
          Image.network(
            imageUrl,
            height: 80.0,
            width: 80.0,
          ),
          const SizedBox(width: 10.0), // Ajusta según sea necesario
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                boldText,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 15.0
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}



}


