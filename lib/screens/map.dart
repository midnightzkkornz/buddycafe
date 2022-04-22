import 'package:flutter/material.dart';

import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// import 'package:buddycafes/screens/search.dart';


class MyMap extends StatefulWidget {
  final String pet_name;
  final double petc_lat;
  final double petc_log;
  
  MyMap({required this.pet_name, required this.petc_lat, required this.petc_log});

  @override
  MyMapState createState() => MyMapState();
}


class MyMapState extends State<MyMap> {

  late Position userLocation;
  late GoogleMapController mapController;

  late double x = widget.petc_lat;
  late double y = widget.petc_log;
  


  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Future<Position> _getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    userLocation = await Geolocator.getCurrentPosition();
    return userLocation;
  }

  // local marks's

  Set<Marker> myMarkers(){
    return <Marker>[
      localMarker(),
      cafeMarker(),
    ].toSet();
  }

  Marker localMarker() {
    return Marker(
      infoWindow: InfoWindow(
        title: 'Its here',
        snippet: 'lat= ${x} ,long= ${y}',
      ),
      markerId: MarkerId('myLocation'),
      position: LatLng(x, y),
    );
  }

  Marker cafeMarker(){
    return Marker(
      icon: BitmapDescriptor.defaultMarkerWithHue(80.0),
      markerId: MarkerId('Cafe'),
      position: LatLng(x, y),
      infoWindow: InfoWindow(
        title: 'Cafe',
        snippet: 'open',
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pet_name),
      ),
      body: FutureBuilder(
        future: _getLocation(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return GoogleMap(
              mapType: MapType.normal,
              onMapCreated: _onMapCreated,
              myLocationEnabled: true,
              initialCameraPosition: CameraPosition(
                  target: LatLng(x, y),
                  zoom: 15),
            );
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                ],
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          mapController.animateCamera(CameraUpdate.newLatLngZoom(
              LatLng(x, y), 22));
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(
                    'Your location has been send !\nlat: ${x} long: ${y} '),
              );
            },
          );
        },
        label: Text("Location"),
        icon: Icon(Icons.near_me),
      ),
    );
  }
}
