import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:story_app/commons/config/themes/theme.dart';
import 'package:geocoding/geocoding.dart' as geo;
import 'package:story_app/features/home/presentations/widget/placemark_widget.dart';

class AddLocationScreen extends StatefulWidget {
  const AddLocationScreen({super.key});

  @override
  State<AddLocationScreen> createState() => _AddLocationScreenState();
}

class _AddLocationScreenState extends State<AddLocationScreen> {
  final defaultPosisition = const LatLng(-6.8957473, 107.6337669);
  final Set<Marker> markers = {};
  late GoogleMapController mapController;
  MapType selectedMapType = MapType.normal;
  geo.Placemark? placemark;
  LatLng? selectedLocation;

  @override
  void initState() {
    defineMarker(defaultPosisition.latitude, defaultPosisition.longitude);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Stack(
                children: [
                  GoogleMap(
                    markers: markers,
                    myLocationButtonEnabled: false,
                    zoomControlsEnabled: false,
                    mapToolbarEnabled: false,
                    mapType: selectedMapType,
                    myLocationEnabled: true,
                    initialCameraPosition: CameraPosition(
                      target: defaultPosisition,
                      zoom: 18,
                    ),
                    onMapCreated: (controller) {
                      setState(() {
                        mapController = controller;
                      });
                    },
                    onLongPress: (LatLng latLng) {
                      defineMarker(latLng.latitude, latLng.longitude);
                      selectedLocation = latLng;
                      mapController
                          .animateCamera(CameraUpdate.newLatLng(latLng));
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
                    right: 16,
                    child: FloatingActionButton.small(
                      backgroundColor: primaryColor,
                      onPressed: () {
                        onMyLocation();
                      },
                      child: const Icon(
                        Icons.my_location_rounded,
                        color: secondaryColor,
                      ),
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
                        ],
                      ),
                    ),
                  ),
                  if (placemark != null)
                    Positioned(
                      bottom: 16,
                      right: 16,
                      left: 16,
                      child: PlacemarkWidget(placemark: placemark!),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ElevatedButton(
                onPressed: (selectedLocation != null)
                    ? () {
                        var address =
                            '${placemark?.subLocality}, ${placemark?.locality}, ${placemark?.postalCode}, ${placemark?.country}';
                        context.pop([
                          selectedLocation,
                          address,
                        ]);
                      }
                    : null,
                child: const Text('Add Location'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onMyLocation() async {
    final Location location = Location();
    late bool serviceEnabled;
    late PermissionStatus permissionGranted;
    late LocationData locationData;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        print('Location services is not available');
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        print("Location permission is denied");
        return;
      }
    }
    locationData = await location.getLocation();
    final latLng = LatLng(locationData.latitude!, locationData.longitude!);

    defineMarker(locationData.latitude!, locationData.longitude!);
    selectedLocation = latLng;
    mapController.animateCamera(CameraUpdate.newLatLng(latLng));
  }

  void defineMarker(double lat, double lon) async {
    print('hit');
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

    setState(() {
      markers.clear();
      placemark = place;
      markers.add(marker);
    });
  }
}
