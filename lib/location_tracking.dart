import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class LocationTracking extends StatefulWidget {
  const LocationTracking({ Key? key }) : super(key: key);



  @override
  State<LocationTracking> createState() => _LocationTrackingState();
}
LatLng sourceLocation = LatLng(28.5355161, 77.3910264);
class _LocationTrackingState extends State<LocationTracking> {
  @override
  Widget build(BuildContext context) {

    CameraPosition initialCameraPosition = CameraPosition(
      target: sourceLocation,
      zoom: 20,
      tilt:80,
      bearing: 30,
    );



    return SafeArea(
      child: Scaffold(
        body: GoogleMap(
          initialCameraPosition: initialCameraPosition,
        )
      ),
      
    );
  }
}