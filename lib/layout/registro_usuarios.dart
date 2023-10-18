import 'package:flutter/material.dart';

/*class registro_usuarios extends StatelessWidget {
  
  const registro_usuarios({super.key});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

}*/

// ignore: camel_case_types
class registro_usuarios extends StatelessWidget {
  
  const registro_usuarios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro de Usuarios'),
        elevation: 10.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nombre Completo'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Usuario'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(labelText: 'eMail'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Contraseña'),
                obscureText: true,
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Confirmación de Contraseña'),
                obscureText: true,
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField(
                items: const [
                  DropdownMenuItem(child: Text('Ciudadano'), value: 'ciudadano'),
                  DropdownMenuItem(child: Text('Responsable de Estadísticas'), value: 'responsable'),
                  DropdownMenuItem(child: Text('Funcionario de Toma de Decisiones'), value: 'funcionario'),
                ],
                onChanged: (value) {
                  // Acción al seleccionar un rol
                },
                decoration: const InputDecoration(labelText: 'Rol'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Dirección'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Fecha de Nacimiento (dd/mm/aaaa)'),
              ),
              const SizedBox(height: 10),
              const Text('Género'),
              const Row(
                children: [
                  Radio(value: 'masculino', groupValue: null, onChanged: null),
                  Text('Masculino'),
                  Radio(value: 'femenino', groupValue: null, onChanged: null),
                  Text('Femenino'),
                  Radio(value: 'binario', groupValue: null, onChanged: null),
                  Text('Binario'),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón de registro
                },
                child: const Text('Registrarse'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
