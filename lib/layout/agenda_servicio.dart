// ignore_for_file: camel_case_types, library_private_types_in_public_api, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

class agenda_servicio extends StatefulWidget {
  const agenda_servicio({Key? key}) : super(key: key);

  @override
  _AgendaServicioState createState() => _AgendaServicioState();
}

class _AgendaServicioState extends State<agenda_servicio> {
  String? selectedService = ''; // Para almacenar el servicio seleccionado
  DateTime selectedDate = DateTime.now(); // Para almacenar la fecha seleccionada
  TimeOfDay selectedTime = TimeOfDay.now(); // Para almacenar la hora seleccionada
  String? selectedLocation = ''; // Para almacenar el lugar seleccionado
  String? selectedCategory = '';
  var logger = Logger();

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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(150.0, 50.0, 150.0, 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Texto de bienvenida
            const Text(
              'Bienvenido a Just One Click!',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5.0), // Espaciado entre el texto y la sección existente
            const Text(
              'Realiza tu reserva',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 50.0), 
            // Selección de fecha y hora
            Row(
              children: [
                // Selección de fecha
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      final DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2101),
                      );

                      if (pickedDate != null && pickedDate != selectedDate) {
                        setState(() {
                          selectedDate = pickedDate;
                        });
                      }
                    },
                    child: const Text('Seleccionar Fecha'),
                  ),
                ),
                const SizedBox(width: 20.0),
                // Selección de hora
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      final TimeOfDay? pickedTime = await showTimePicker(
                        context: context,
                        initialTime: selectedTime,
                      );

                      if (pickedTime != null && pickedTime != selectedTime) {
                        setState(() {
                          selectedTime = pickedTime;
                        });
                      }
                    },
                    child: const Text('Seleccionar Hora'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50.0),

            // Mostrar la selección de fecha y hora
            Text(
              'Fecha seleccionada: ${DateFormat('dd/MM/yyyy').format(selectedDate)}',
              style: const TextStyle(fontSize: 16.0),
            ),
            Text(
              'Hora seleccionada: ${selectedTime.format(context)}',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 20.0),
            // Selección del lugar
            TextFormField(
              onChanged: (value) {
                setState(() {
                  selectedLocation = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Ingresa el lugar',
              ),
            ),
            const SizedBox(height: 50.0),
            const Text(
              'Selecciona el servicio que deseas reservar',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 50.0),
            // Lista de servicios
            SizedBox(
              height: 200.0, // Ajusta la altura según sea necesario
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
                          ? Colors.blue // Puedes personalizar el color de fondo cuando está seleccionado
                          : null,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(services[index]),
                      ),
                    ),
                  );
                },
              ),
            ),
            

                    
            const SizedBox(height: 20.0),
            // Botón para confirmar reserva
            ElevatedButton(
              onPressed: () {
                // Implementa la lógica para manejar la reserva del servicio
                // Puedes acceder a los valores seleccionados (servicio, fecha, hora, lugar)
                // desde las variables selectedService, selectedDate, selectedTime y selectedLocation
                // Aquí puedes enviar los datos a tu backend o manejar la lógica de reserva según tu aplicación.
              },
              child: const Text('Confirmar Reserva'),
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





}
