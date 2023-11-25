// ignore_for_file: camel_case_types, library_private_types_in_public_api, prefer_typing_uninitialized_variables, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ListaEstablecimientos extends StatefulWidget {
  const ListaEstablecimientos({Key? key}) : super(key: key);

  @override
  _ListaEstablecimientosState createState() => _ListaEstablecimientosState();
}

class Empleado {
  final String id;
  final String id_establecimiento;
  final String nombre;
  final String apellido;
  final String imagen;
  final String horario;

  Empleado({
    required this.id,
    required this.id_establecimiento,
    required this.nombre,
    required this.apellido,
    required this.imagen,
    required this.horario,
  });
}

class _ListaEstablecimientosState extends State<ListaEstablecimientos> {
  Future get_empleados() async {
    var url = Uri.http("192.168.0.10", 'analista_vial.php', {'q': '{http}'});
    final response = await http.get(url);
    var responseData = json.decode(response.body);

    List<Empleado> empleados = [];
    for (var singleUser in responseData) {
      Empleado empleado = Empleado(
        id: singleUser["id"],
        id_establecimiento: singleUser["id_establecimiento"],
        nombre: singleUser["nombre"],
        apellido: singleUser["apellido"],
        imagen: singleUser["imagen"],
        horario: singleUser["horario"],
      );
      empleados.add(empleado);
    }
    return empleados;
  }

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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: Text('Selecciona el empleado favorito:',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff393839))),
            ),
            Container(
              height: 400,
              child: FutureBuilder(
                  future: get_empleados(),
                  builder: (BuildContext ctx, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Text(snapshot.data[index].id),
                              Text(snapshot.data[index].nombre),
                              Text(snapshot.data[index].apellido),
                              Text(snapshot.data[index].imagen),
                              Text(snapshot.data[index].horario),
                            ],
                          );
                        },
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}
