import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:story_app/commons/config/themes/theme.dart';
import 'package:geocoding/geocoding.dart' as geo;
import 'package:story_app/features/home/presentations/widget/placemark_widget.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key, required this.lat, required this.lon});

  final String lat;
  final String lon;

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Set<Marker> markers = {};
  late GoogleMapController mapController;
  MapType selectedMapType = MapType.normal;
  geo.Placemark? placemark;

  @override
  void initState() {
    getLocation(double.parse(widget.lat), double.parse(widget.lon));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final currentPosition =
        LatLng(double.parse(widget.lat).toDouble(), double.parse(widget.lon));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map'),
      ),
      body: Center(
        child: Stack(children: [
          GoogleMap(
            markers: markers,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            mapToolbarEnabled: false,
            mapType: selectedMapType,
            initialCameraPosition: CameraPosition(
              target: currentPosition,
              zoom: 18,
            ),
            onMapCreated: (controller) {
              setState(() {
                mapController = controller;
              });
            },
          ),
          Positioned(
            bottom: 130,
            right: 16,
            child: Column(
              children: [
                FloatingActionButton.small(
                  heroTag: "zoom-in",
                  backgroundColor: primaryColor,
                  child: const Icon(
                    Icons.add,
                    color: secondaryColor,
                  ),
                  onPressed: () {
                    mapController.animateCamera(CameraUpdate.zoomIn());
                  },
                ),
                FloatingActionButton.small(
                  heroTag: "zoom-out",
                  backgroundColor: primaryColor,
                  child: const Icon(
                    Icons.remove,
                    color: secondaryColor,
                  ),
                  onPressed: () {
                    mapController.animateCamera(CameraUpdate.zoomOut());
                  },
                )
              ],
            ),
          ),
          Positioned(
            top: 16,
            left: 16,
            child: FloatingActionButton.small(
              backgroundColor: primaryColor,
              onPressed: null,
              child: PopupMenuButton<MapType>(
                  color: primaryColor,
                  surfaceTintColor: thirdColor,
                  onSelected: (value) => {
                        setState(
                          () {
                            selectedMapType = value;
                          },
                        ),
                      },
                  offset: const Offset(50, 0),
                  icon: const Icon(Icons.layers_outlined),
                  itemBuilder: (context) => <PopupMenuEntry<MapType>>[
                        const PopupMenuItem<MapType>(
                          value: MapType.normal,
                          child: Text('Normal'),
                        ),
                        const PopupMenuItem<MapType>(
                          value: MapType.satellite,
                          child: Text('Satellite'),
                        ),
                        const PopupMenuItem<MapType>(
                          value: MapType.terrain,
                          child: Text('Terrain'),
                        ),
                        const PopupMenuItem<MapType>(
                          value: MapType.hybrid,
                          child: Text('Hybrid'),
                        )
                      ]),
            ),
          ),
          if (placemark != null)
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: PlacemarkWidget(placemark: placemark!),
            )
        ]),
      ),
    );
  }

  void getLocation(double lat, double lon) async {
    final currentPosisition = LatLng(lat, lon);

    final info = await geo.placemarkFromCoordinates(
      lat,
      lon,
    );
    final place = info[0];

    final marker = Marker(
      markerId: const MarkerId('Dicoding Id'),
      position: currentPosisition,
      onTap: () => mapController.animateCamera(
        CameraUpdate.newLatLngZoom(currentPosisition, 18),
      ),
    );
    placemark = place;
    markers.add(marker);
  }
}
