import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPageTrip extends StatefulWidget {
  const MapPageTrip({Key? key}) : super(key: key);

  @override
  _MapPageTripState createState() => _MapPageTripState();
}

class _MapPageTripState extends State<MapPageTrip> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(-33.468521, -70.650439);
  final LatLng _marker1 =
      const LatLng(-33.468521, -70.650439); // Coordenadas del primer marcador
  final LatLng _marker2 =
      const LatLng(-33.478521, -70.660439); // Coordenadas del segundo marcador

  Set<Marker> _markers = {}; // Conjunto de marcadores
  Set<Polyline> _polylines = {}; // Conjunto de polylines

  @override
  void initState() {
    super.initState();
    _markers.add(
      Marker(
        markerId: MarkerId("marker1"),
        position: _marker1,
        infoWindow: InfoWindow(title: "Marcador 1"),
      ),
    );

    _markers.add(
      Marker(
        markerId: MarkerId("marker2"),
        position: _marker2,
        infoWindow: InfoWindow(title: "Marcador 2"),
      ),
    );

    _polylines.add(
      Polyline(
        polylineId: PolylineId("polyline1"),
        color: Colors.blue,
        points: [_marker1, _marker2],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapa del viaje'),
      ),
      body: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          setState(() {
            mapController = controller;
          });
        },
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 10.0,
        ),
        markers: _markers,
        polylines: _polylines,
      ),
    );
  }
}
