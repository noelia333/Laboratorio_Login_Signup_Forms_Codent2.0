// ignore_for_file: camel_case_types, library_private_types_in_public_api, unused_field

import 'package:flutter/material.dart';


class profesionales extends StatelessWidget {
  const profesionales ({Key? key}) : super(key: key);
  

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
            // Sección con texto a la izquierda y imagen a la derecha
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 150.0),
                    child: Text(
                      'Presta los mejores servicios de belleza como especialista',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150.0),
                  child: Image.network(
                    'https://monatglobal.com/wp-content/uploads/2018/01/Hair-Glossary.jpg',
                    height: 400.0,
                    width: 700.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 32.0), // Espacio entre las secciones
            // Columna con texto y botón debajo
            Column(
              children: [
                const SizedBox(height: 40.0),
                const Text(
                  'UNETE A LA FAMILIA JUST ONE CLICK',
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
                      'https://th.bing.com/th/id/OIP.xY3VQhY89sIIEae7ll9d1wHaHa?rs=1&pid=ImgDetMain',
                      'Profesionales variados',
                      'La plataforma ofrece una amplia gama de profesionales, desde estudiantes del Sena con formación específica en peluquería hasta estilistas de salones establecidos.',
                    ),
                    _buildCard(
                      'https://cdn.icon-icons.com/icons2/714/PNG/512/profile_icon-icons.com_62220.png',
                      'Perfiles detallados',
                      'Cada profesional tiene un perfil completo que muestra su experiencia, servicios ofrecidos, tarifas y calificaciones de clientes anteriores.',
                    ),
                    _buildCard(
                      'https://th.bing.com/th/id/OIP.b6ot_5GL6q2qn2uiNg6qEAHaG3?rs=1&pid=ImgDetMain',
                      'Enfoque en la comunidad',
                      'Just One Click busca ayudar a profesionales emergentes a encontrar oportunidades laborales y construir sus carteras, al tiempo que satisface las necesidades de una variedad de clientes.',
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
                      'https://static.vecteezy.com/system/resources/previews/020/521/397/large_2x/sketchbook-icon-vector.jpg',
                      'LLeva el control de tus servicios en una agenda',
                      'Así vas a prestar servicios más efectivos ya que no olvidaras los datos más importantes',
                    ),
                    const SizedBox(height: 20.0),
                    _buildImageWithTextAndDescription(
                      'https://th.bing.com/th/id/R.e8475c3411c9046da429b7bf8912cfb2?rik=HHVk8X4pLg528g&riu=http%3a%2f%2fwww.tastunisia.com%2fwp-content%2fuploads%2f2016%2f10%2fimmo_erp.png&ehk=fS4CP%2baTsE6UXg%2btMOz1TZwDccNw1o%2b1tFj%2f1AJei4k%3d&risl=&pid=ImgRaw&r=0',
                      'Puedes escoger los servicios',
                      'Los servicios de belleza que harás durante el día para cómodidad tuya y comodidad del cliente',
                    ),
                    const SizedBox(height: 20.0),
                    _buildImageWithTextAndDescription(
                      'https://thumbs.dreamstime.com/b/white-heart-red-speech-bubble-vector-love-icon-love-symbol-heart-speech-bubble-vector-love-icon-121198143.jpg',
                      'Califica nuestro servicio',
                      'Para garantizarte la mejor atención, ayudanos a mejorar cada dia con tu retroalimentacion',
                    ),
                    const SizedBox(height: 20.0),
                  ],
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
                  fontSize: 16.0,
                ),
              ),
              Text(
                description,
              ),
            ],
          ),
        ],
      ),
    ),
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
                padding: const EdgeInsets.all(10.0),
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
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 15.0,
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
}

