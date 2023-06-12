import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:tripleader/components/create_route_widget.dart';
import 'package:tripleader/forms/create_trip_form.dart';

enum ActivityType { Hiking, SeaKayaking }

enum AbilityLevel { Novice, Beginner, Intermediate, Advanced, Expert }

class CreateTripView extends StatefulWidget {
  @override
  _CreateTripViewState createState() => _CreateTripViewState();
}

class _CreateTripViewState extends State<CreateTripView> {
  void _openCreateRouteWidget(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CreateRouteWidget(initialPosition: LatLng(-45.019022, 168.741764), onRouteCreated: (route) {},),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Trip'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: CreateTripForm(),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CreateTripView(),
  ));
}
