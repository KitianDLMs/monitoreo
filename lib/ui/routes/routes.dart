import 'package:flutter/material.dart';
import 'package:monitoreo/ui/pages/pages.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'map': (context) => const MapPageTrip(),
  'home': (context) => HomePage(),
};
