// ignore_for_file: camel_case_types, sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class pagina_principal extends StatelessWidget {
  const pagina_principal({Key? key}) : super(key: key);

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
            // Imagen en el cuerpo con márgenes personalizados
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 1200.0, // Ajusta la altura según tu preferencia
                  width: 2000.0, // Ajusta el ancho según tu preferencia
                  child: Image.asset(
                    fit: BoxFit.fill,
                    'src/imagenes/back_home.png',
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Conoce la mejor página de reservas",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w200,
                          color: Colors.white,
                          fontSize: 40),
                    ),
                    Center(
                      child: Text(
                        "- Just one click -",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 100),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        /*  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ReporteVial())); */
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Center(
                            child: Container(
                                height: 70,
                                width: 500,
                                decoration: const BoxDecoration(
                                  color: Color(0xff52369d),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                child: const Center(
                                    child: Text(
                                  "Solicita tu reserva aquí",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                )))),
                      ),
                    )
                  ],
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 50),
              child: Text(
                'Algunos de Nuestros Servicios',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff393839)),
                textAlign: TextAlign.center,
              ),
            ),

            // Tarjetas personalizadas
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildCard(
                    'Peluqueria',
                    'Descubre la esencia de la belleza, donde cada corte y estilo cuenta una historia única. Nuestros estilistas expertos transformarán tu cabello en una obra maestra personalizada que refleje tu estilo y resalte tu singularidad.',
                    'https://t2.uc.ltmcdn.com/es/posts/9/9/4/como_poner_precios_en_una_peluqueria_48499_600.jpg'),
                buildCard(
                    'Barberia',
                    'Sumérgete en la experiencia definitiva de cuidado personal. Desde cortes clásicos hasta las últimas tendencias en barbería moderna, nuestro equipo de barberos hábiles está dedicado a brindarte un servicio impecable.',
                    'https://t3.ftcdn.net/jpg/01/89/47/36/240_F_189473642_yRg2aLrwb9OjBwgKul3oLkmpFimrNNzB.jpg'),
                buildCard(
                    'Manicure',
                    'Dale a tus manos el tratamiento que se merecen. Con una gama de colores vibrantes, diseños elegantes y cuidado meticuloso, nuestras manicuristas te llevarán al mundo que siempre soñaste',
                    'https://th.bing.com/th/id/R.f83da0445da30b6cdc22137ed8ad250c?rik=626nnQmGeALm2g&pid=ImgRaw&r=0'),
                buildCard(
                    'Maquillaje',
                    'Experimenta la magia de la transformación. Desde looks naturales hasta glamurosos, nuestros artistas del maquillaje resaltarán tu belleza interior y exterior.',
                    'https://3.bp.blogspot.com/_MQKIWovAJQY/SUVqjp1pW0I/AAAAAAAAAjI/_1ersqNMUG8/s400/boda2.jpg'),
              ],
            ),

            SizedBox(
              height: 200,
            )
          ],
        ),
      ),
      /*  persistentFooterButtons: [
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
      ], */
    );
  }

  Widget buildCard(String title, String description, String imageUrl) {
    return Container(
      height: 600,
      width: 400,
      decoration: BoxDecoration(boxShadow: [
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
      ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Image.network(
              imageUrl,
              height: 200.0,
              width: 350.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              title,
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff393839)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              width: 350,
              child: Text(
                description,
                textAlign: TextAlign
                    .justify, // Ajusta la alineación según tus preferencias
                style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff393839)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
