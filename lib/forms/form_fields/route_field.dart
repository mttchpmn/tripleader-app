import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:tripleader/components/create_route_widget.dart';
import 'package:tripleader/models/route_model.dart';

class RouteInputField extends StatelessWidget {
  final IconData icon;
  final String labelText;
  final TripRoute value;
  final ValueChanged<TripRoute> onValueChanged;

  const RouteInputField({
    super.key,
    required this.value,
    required this.onValueChanged,
    required this.icon,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    var text = value.coordinates.isNotEmpty
        ? "${value.distance} km"
        : "No route created";

    return TextFormField(
      readOnly: true,
      decoration: InputDecoration(icon: Icon(icon), labelText: labelText),
      controller: TextEditingController(text: text),
      onTap: () {
        _showRouteCreator(context);
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }

  void _showRouteCreator(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CreateRouteWidget(
          initialPosition: LatLng(-45.019022, 168.741764),
          onRouteCreated: (route) {
            onValueChanged(route);
          },
        ),
      ),
    );
  }
}
