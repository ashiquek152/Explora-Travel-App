import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SelectLocationController extends GetxController {
  final searchFieldController = TextEditingController();
  final Completer<GoogleMapController> controller = Completer();
  GoogleMapController? googleMapController;

  final CameraPosition kGooglePlex = const CameraPosition(
    target: LatLng(11.151895, 75.893574),
    zoom: 14.4746,
  );

  Set<Marker> markers = {};

  final CameraPosition kLake = const CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(10.8505, 76.2711),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  Future<Position> findCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error("Location services are disabled");
    }
    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        return Future.error("Location permission denied");
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error("Location permission denied permenently");
    }
    Position position = await Geolocator.getCurrentPosition();

    return position;
  }

  newLocation() async {
    final GoogleMapController controller2;
    controller2 = await controller.future;
    // controller2.animateCamera(CameraUpdate.newCameraPosition(kLake));

    Position position = await findCurrentLocation();
    await controller2.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        target: LatLng(position.latitude, position.longitude),
        zoom: 14,
      ),
    ));
    markers.clear();
    markers.add(
      Marker(
        markerId: const MarkerId("CurrentLocation"),
        position: LatLng(position.latitude, position.longitude),
      ),
    );
    update();
  }
}
