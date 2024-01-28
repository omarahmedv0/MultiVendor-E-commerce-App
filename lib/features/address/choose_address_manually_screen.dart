import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:talabat_clone/core/manager/route_manager.dart';
import 'package:talabat_clone/core/shared/widgets/custom_button.dart';
import 'package:talabat_clone/core/styles/app_font.dart';

class ChooseAddressManuallyScreen extends StatefulWidget {
  const ChooseAddressManuallyScreen({super.key});

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(30.43296265331129, 31.08832357078792),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(30.43296265331129, 31.08832357078792),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  @override
  State<ChooseAddressManuallyScreen> createState() =>
      _ChooseAddressManuallyScreenState();
}

class _ChooseAddressManuallyScreenState
    extends State<ChooseAddressManuallyScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  Set<Marker> marker = {};

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Select your location',
            style: AppFont.getTitleSmallFont(context),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        body: GoogleMap(
          markers: marker,
          onTap: (argument) {
            setState(() {
              marker.add(Marker(
                markerId: const MarkerId('1'),
                position: argument,
              ));
            });
          },
          mapType: MapType.normal,
          initialCameraPosition: ChooseAddressManuallyScreen._kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          child: CustomButton(
            isPadding: true,
            text: 'Continue',
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRoutes.layoutView,
              );
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
