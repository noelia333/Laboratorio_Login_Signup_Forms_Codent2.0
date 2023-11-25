// ignore_for_file: camel_case_types, library_private_types_in_public_api, prefer_typing_uninitialized_variables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class agenda_servicio extends StatefulWidget {
  const agenda_servicio({Key? key}) : super(key: key);

  @override
  _AgendaServicioState createState() => _AgendaServicioState();
}

class _AgendaServicioState extends State<agenda_servicio> {
  TextEditingController fecha = TextEditingController();
  TextEditingController hora = TextEditingController();
  String? selectedService = ''; // Para almacenar el servicio seleccionado
  DateTime selectedDate =
      DateTime.now(); // Para almacenar la fecha seleccionada
  TimeOfDay selectedTime =
      TimeOfDay.now(); // Para almacenar la hora seleccionada
  String? selectedLocation = ''; // Para almacenar el lugar seleccionado
  String? selectedCategory = '';

  @override
  Widget build(BuildContext context) {
    // Asigna valores a la lista de servicios
    var services = [
      'Corte de cabello',
      'Corte de barba',
      'Peinado',
      'Tintura',
      'Asesoría de belleza',
      'Tratamiento para el cabello',
      'Combo corte y peinado',
      'Manicura',
      'Pedicura',
      'Combo manicura y pedicura',
      'Depilación Facial',
      'Depilación Corporal',
      'Maquillaje Profesional',
      'Masaje Estético',
    ];

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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Texto de bienvenida
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: Text('Realiza tu reserva:',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff393839))),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 500,
                    child: TextField(
                      onTap: () async {
                        final DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: selectedDate,
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2101),
                        );

                        if (pickedDate != null && pickedDate != selectedDate) {
                          setState(() {
                            selectedDate = pickedDate;
                            fecha.text = _formatDate(pickedDate);
                          });
                        }
                      },
                      controller: fecha,
                      style: TextStyle(fontSize: 16),
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 218, 218, 218),
                                width: 2.0),
                          ),
                          hintText: 'Seleccionar fecha',
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
                          floatingLabelBehavior: FloatingLabelBehavior.always),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Container(
                      width: 500,
                      child: TextField(
                        onTap: () async {
                          final TimeOfDay? pickedTime = await showTimePicker(
                            context: context,
                            initialTime: selectedTime,
                          );

                          if (pickedTime != null &&
                              pickedTime != selectedTime) {
                            setState(() {
                              selectedTime = pickedTime;
                              hora.text = _formatTime(pickedTime);
                            });
                          }
                        },
                        controller: hora,
                        style: TextStyle(fontSize: 16),
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 218, 218, 218),
                                  width: 2.0),
                            ),
                            hintText: 'Seleccionar hora',
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
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 40),
              child: const Text('Selecciona el servicio que deseas reservar',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff393839))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 420, right: 420),
              child: Container(
                height: 300, // Ajusta la altura según sea necesario
                child: ListView.builder(
                  itemCount: services.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedService = services[index];
                        });
                      },
                      child: Card(
                        color: selectedService == services[index]
                            ? Color(
                                0xff52369d) // Puedes personalizar el color de fondo cuando está seleccionado
                            : null,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(services[index],
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: selectedService == services[index]
                                      ? Colors.white
                                      : Color(0xff393839))),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                    height: 50,
                    width: 300,
                    decoration: const BoxDecoration(
                      color: Color(0xff52369d),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Center(
                        child: Text(
                      "Continuar",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ))),
              ),
            )
          ],
        ),
      ),
/*       persistentFooterButtons: [
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

  String _formatDate(DateTime date) {
    // Puedes personalizar el formato de fecha según tus necesidades
    return '${date.day}/${date.month}/${date.year}';
  }

  String _formatTime(TimeOfDay time) {
    // Puedes personalizar el formato de hora según tus necesidades
    return '${time.hour}:${time.minute}';
  }
}
