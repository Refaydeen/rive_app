import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PolygoneScreen extends StatefulWidget {
  const PolygoneScreen({Key? key}) : super(key: key);

  @override
  State<PolygoneScreen> createState() => _PolygoneScreenState();
}

class _PolygoneScreenState extends State<PolygoneScreen> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _position =
      CameraPosition(target: LatLng(13.0566867, 80.2570928), zoom: 16);
  final Set<Marker> _markers = {};
  Set<Polygon> _polygon = HashSet<Polygon>();
  final List<LatLng> _points = <LatLng>[
    LatLng(13.0566867, 80.2570928),
    LatLng(13.059690, 80.252020),
    LatLng(13.009330, 80.212790),
    LatLng(13.064100, 80.274460),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _polygon.add(Polygon(polygonId: PolygonId('1'),points: _points,
    fillColor: Colors.red.withOpacity(0.3),geodesic: true,strokeWidth: 4,
    strokeColor: Colors.deepOrange));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _position,
        mapType: MapType.normal,
        polygons: _polygon,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
