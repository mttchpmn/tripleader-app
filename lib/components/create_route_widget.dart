import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class CreateRouteWidget extends StatefulWidget {
  const CreateRouteWidget(
      {super.key,
      required LatLng initialPosition,
      required ValueChanged<Route> onRouteCreated})
      : _initialPosition = initialPosition,
        _onRouteCreated = onRouteCreated;

  final LatLng _initialPosition;
  final ValueChanged<Route> _onRouteCreated;

  @override
  State<CreateRouteWidget> createState() => _CreateRouteWidgetState();
}

class _CreateRouteWidgetState extends State<CreateRouteWidget> {
  List<LatLng> waypoints = [];
  List<Marker> markers = [];
  Path path = Path();
  double distanceKm = 0;

  final lineColor = Colors.deepOrange;
  final lineWidth = 3.0;

  final markerColor = Colors.deepOrange;
  final markerIcon = Icons.circle;
  final markerSize = 15.0;

  @override
  Widget build(BuildContext context) {
    var tileProviderUrl = 'https://tile.openstreetmap.org/{z}/{x}/{y}.png';
    var userAgentPackageName = 'com.tripleader.app';

    var attributionUrl = 'https://openstreetmap.org/copyright';
    var contributors = 'OpenStreetMap contributors';

    return Scaffold(
      appBar: AppBar(title: Text("Create Route"), ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    _onUndo();
                  },
                  icon: const Icon(Icons.undo)),
              IconButton(
                  onPressed: () {
                    _onClearRoute();
                  },
                  icon: const Icon(Icons.cancel)),
            ],
          ),
          Expanded(
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(widget._initialPosition.latitude, widget._initialPosition.longitude),
                zoom: 12,
                onLongPress: _onTap,
                interactiveFlags: InteractiveFlag.all & ~InteractiveFlag.rotate
              ),
              nonRotatedChildren: [
                RichAttributionWidget(
                  attributions: [
                    TextSourceAttribution(
                      contributors,
                      onTap: () {
                        launchUrl(Uri.parse(attributionUrl));
                      },
                    ),
                  ],
                ),
              ],
              children: [
                TileLayer(
                  urlTemplate: tileProviderUrl,
                  userAgentPackageName: userAgentPackageName,
                ),
                PolylineLayer(
                  polylines: [
                    Polyline(
                        points: waypoints,
                        color: lineColor,
                        strokeWidth: lineWidth),
                  ],
                ),
                MarkerLayer(
                  markers: markers,
                ),
              ],
            ),
          ),
          Row(
            children: [Text("Total distance ${distanceKm} km")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("Create Route"))
            ],
          )
        ],
      ),
    );
  }

  void _onTap(TapPosition tapPosition, LatLng point) {
    setState(() {
      waypoints.add(point);
      markers.add(Marker(
        point: point,
        width: 50,
        height: 50,
        builder: (context) => Icon(
          markerIcon,
          size: markerSize,
          color: markerColor,
        ),
      ));
      path = Path.from(waypoints);
      distanceKm = path.distance / 1000;
    });
  }

  void _onClearRoute() {
    setState(() {
      waypoints.clear();
      markers.clear();
      distanceKm = 0;
    });
  }

  void _onUndo() {
    setState(() {
      waypoints.removeLast();
      markers.removeLast();
      path = Path.from(waypoints);
      distanceKm = path.distance / 1000;
    });
  }
}
