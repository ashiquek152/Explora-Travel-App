import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project_2/app/modules/select.location/controllers/select_location_controller.dart';

class MapSample extends StatelessWidget {
  MapSample({Key? key}) : super(key: key);

  final locationController = Get.put(SelectLocationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SelectLocationController>(builder: (context) {
        return GoogleMap(
          mapType: MapType.hybrid,
          initialCameraPosition: context.kGooglePlex,
          markers: context.markers,
          zoomControlsEnabled: false,
          onMapCreated: (GoogleMapController controller) {
            context.controller.complete(controller);
          },
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await locationController.newLocation();
        },
        child: const Icon(Icons.location_searching_sharp),
      ),
    );
  }
}
