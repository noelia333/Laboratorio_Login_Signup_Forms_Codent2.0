// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class pagina_principal extends StatelessWidget {
  const pagina_principal({Key? key}) : super(key: key);

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Texto antes de la imagen
          const Padding(
            padding: EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Bienvenido',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Imagen en el cuerpo con márgenes personalizados
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0), // Ajusta los márgenes según tus preferencias
            child: Container(
              color: Colors.red, 
              height: 800.0, // Ajusta la altura según tu preferencia
              width: 5000.0,  // Ajusta el ancho según tu preferencia
              child: Image.network(
                fit: BoxFit.fill,
                'https://th.bing.com/th/id/OIP.lvZjetmjfNsPHyBRga4WPAHaEK?pid=ImgDet&rs=1',               
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            child: Text(
              'Algunos de Nuestros Servicios',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Tarjetas personalizadas
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCard('Peluqueria', 'Descubre la esencia de la belleza, donde cada corte y estilo cuenta una historia única. Nuestros estilistas expertos transformarán tu cabello en una obra maestra personalizada que refleje tu estilo y resalte tu singularidad.', 'https://t2.uc.ltmcdn.com/es/posts/9/9/4/como_poner_precios_en_una_peluqueria_48499_600.jpg'),
              buildCard('Barberia', 'Sumérgete en la experiencia definitiva de cuidado personal. Desde cortes clásicos hasta las últimas tendencias en barbería moderna, nuestro equipo de barberos hábiles está dedicado a brindarte un servicio impecable.', 'https://t3.ftcdn.net/jpg/01/89/47/36/240_F_189473642_yRg2aLrwb9OjBwgKul3oLkmpFimrNNzB.jpg'),
              buildCard('Manicure', 'Dale a tus manos el tratamiento que se merecen. Con una gama de colores vibrantes, diseños elegantes y cuidado meticuloso, nuestras manicuristas te llevarán a un mundo donde tus uñas se convierten en lienzos de expresión personal.', 'https://th.bing.com/th/id/R.f83da0445da30b6cdc22137ed8ad250c?rik=626nnQmGeALm2g&pid=ImgRaw&r=0'),
              buildCard('Maquillaje', 'Experimenta la magia de la transformación. Desde looks naturales hasta glamurosos, nuestros artistas del maquillaje resaltarán tu belleza interior y exterior. Descubre cómo el maquillaje puede potenciar tu confianza y resaltar tu verdadero yo.', 'https://3.bp.blogspot.com/_MQKIWovAJQY/SUVqjp1pW0I/AAAAAAAAAjI/_1ersqNMUG8/s400/boda2.jpg'),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Text(
              'Historias de exito',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Nuevas tarjetas personalizadas para historias de éxito
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildSuccessCard('"Me encanta este servicio! me ahorro mucho tiempo desde la comodidad de mi casa"', 'Alexander Puentes'),
              buildSuccessCard('"Es el mejor sitio web para hacerse las uñas a domicilio tiene la mejor atencion"', 'Karen Rojas'),
              buildSuccessCard('"Just One Click ha transformado mi carrera como estilista."', 'Ana Maria Correa'),
              buildSuccessCard('"Desde que me uní a Just One Click, mi carrera como maquillador ha despegado."', 'Felipe Martinez'),
            ],
          ),
          const SizedBox(height: 40.0),
          // Agrega más widgets según sea necesario en el cuerpo
        ],
      ),
    ),
    persistentFooterButtons: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Columna 1
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
          // Columna 2
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
          // Columna 3 (imagen)
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
          )
        ],
      ),
    ],
  );
}

Widget buildCard(String title, String description, String imageUrl) {
  return Card(
    elevation: 15.0, // Ajusta este valor según tus preferencias para la sombra
    child: Padding(
      padding: const EdgeInsets.all(20.0), // Ajusta este valor según tus preferencias
      child: Column(
        children: [
          Image.network(
            imageUrl,
            height: 100.0,
            width: 100.0,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10.0),
          Text(
            title,
            style: const TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 29, 28, 28), // Cambia este color según tus preferencias
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            constraints: const BoxConstraints(
              maxWidth: 190.0, // Ajusta este valor según tus preferencias
            ),
            child: Text(
              description,
              textAlign: TextAlign.justify, // Ajusta la alineación según tus preferencias
              style: const TextStyle(
                fontSize: 15.0,
                color: Color.fromARGB(255, 29, 28, 28), // Cambia este color según tus preferencias
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildSuccessCard(String description, String name) {
  var cardWidth2 = 250.0;
  return SizedBox(
    width: cardWidth2, // Establecer el ancho de la tarjeta
    child: Card(
      elevation: 15.0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            Text(
              description,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 15.0,
                color: Color.fromARGB(255, 29, 28, 28),
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              name,
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 29, 28, 28),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

}
