// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class EleccionServicio extends StatefulWidget {
  const EleccionServicio({super.key});

  @override
  State<EleccionServicio> createState() => _EleccionServicioState();
}

class _EleccionServicioState extends State<EleccionServicio> {
  bool _isSelected = false;
  bool _isSelected2 = false;

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
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.only(top: 70),
            child: Text(
                '¡Bienvenido¡ Por favor elija el tipo de servicio que quiere:',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff393839))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /*  customCard(
                    isSelected,
                    "src/imagenes/profesional.jpg",
                    "Profesional",
                    "Seleccione un profesional si quiere un servicio de Freelancer hasta su punto de encuentro."),
                customCard(
                    isSelected2,
                    "src/imagenes/establecimiento.jpg",
                    "Establecimiento",
                    "Seleccione un establecimiento si se quiere desplazar hasta el lugar.") */
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isSelected = !_isSelected;
                      });
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: _isSelected
                                ? Color(0xff52369d)
                                : Colors.transparent,
                            width: 3.0,
                          )),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 200,
                                  width: 480,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                        fit: BoxFit.cover,
                                        "src/imagenes/profesional.jpg"),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Text(
                                  "Profesinal",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff393839)),
                                ),
                              ),
                              Container(
                                width: 480,
                                child: Text(
                                  "Seleccione un profesional si quiere un servicio de Freelancer hasta su punto de encuentro.",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff393839)),
                                ),
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isSelected2 = !_isSelected2;
                      });
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: _isSelected2
                                ? Color(0xff52369d)
                                : Colors.transparent,
                            width: 3.0,
                          )),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 200,
                                  width: 480,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                        fit: BoxFit.cover,
                                        "src/imagenes/establecimiento.jpg"),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Text(
                                  "Establecimiento",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff393839)),
                                ),
                              ),
                              Container(
                                width: 480,
                                child: Text(
                                  "Seleccione un establecimiento si se quiere desplazar hasta el lugar.",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff393839)),
                                ),
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 60),
              child: (_isSelected == true || _isSelected2 == true)
                  ? GestureDetector(
                      onTap: () {
                        if (_isSelected == true) {
                          Navigator.pushNamed(context, '/ingreso');
                        } else if (_isSelected2 == true) {
                          Navigator.pushNamed(context, '/servicio');
                        }
                      },
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
                    )
                  : Container()),
        ]),
      ),
    );
  }

  Padding customCard(
      bool state, String url, String nombre, String descripcion) {
    return Padding(
      padding: const EdgeInsets.only(left: 60),
      child: GestureDetector(
        onTap: () {
          setState(() {
            state = !state;
          });
        },
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: state ? Colors.red : Colors.transparent,
                width: 2.0,
              )),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  height: 200,
                  width: 480,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(fit: BoxFit.cover, url),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  nombre,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff393839)),
                ),
              ),
              Container(
                width: 480,
                child: Text(
                  descripcion,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff393839)),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
