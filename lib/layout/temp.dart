import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MyData> dataList = [];
  List<MyData> selectedDataList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Datos'),
      ),
      body: FutureBuilder<List<MyData>>(
        future: fetchDataFromBackend(),
        builder: (context, snapshot) {
          List<MyData> tempList = [];

          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            tempList = List.from(snapshot.hasData);

            return ListView.builder(
              itemCount: tempList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(tempList[index].nombre),
                  subtitle: Text(tempList[index].apellido),
                  onTap: () {
                    setState(() {
                      selectedDataList.add(tempList[index]);
                    });
                  },
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AnotherPage(selectedDataList),
            ),
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}

class AnotherPage extends StatelessWidget {
  final List<MyData> selectedDataList;

  AnotherPage(this.selectedDataList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Otra Página'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Datos Seleccionados:'),
          for (var data in selectedDataList)
            Text('${data.nombre} ${data.apellido}'),
        ],
      ),
    );
  }
}

class MyData {
  final String nombre;
  final String apellido;

  MyData({required this.nombre, required this.apellido});
}

Future<List<MyData>> fetchDataFromBackend() async {
  await Future.delayed(Duration(seconds: 2));
  return [
    MyData(nombre: 'Juan', apellido: 'Pérez'),
    MyData(nombre: 'María', apellido: 'Gómez'),
    MyData(nombre: 'Carlos', apellido: 'López'),
  ];
}
