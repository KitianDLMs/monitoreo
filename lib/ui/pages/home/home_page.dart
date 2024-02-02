import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final trips = [
    {
      'id': '123455',
      'n° de viaje': '5232',
      'destino': 'Plaza Maipu',
      'inicio': 'Bodega San Francisco',
    },
    {
      'id': '0897',
      'n° de viaje': '230',
      'destino': 'Vicuña Mackenna 67',
      'inicio': 'Bodega San Francisco',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Monitoreo')),
      body: ListView.builder(
        itemCount: trips.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text('ID: ${trips[index]['id']}'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('N° de viaje: ${trips[index]['n° de viaje']}'),
                  Text('Destino: ${trips[index]['destino']}'),
                  Text('Inicio: ${trips[index]['inicio']}'),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, 'map');
              });
        },
      ),
    );
  }
}
