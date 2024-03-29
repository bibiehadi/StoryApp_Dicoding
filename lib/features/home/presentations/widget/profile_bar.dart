import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:geocoding/geocoding.dart' as geo;

import '../../../../commons/config/themes/theme.dart';

class ProfileBar extends StatefulWidget {
  const ProfileBar({
    super.key,
    required this.imageUrl,
    required this.name,
    this.lat,
    this.lon,
  });

  final String imageUrl;
  final String name;
  final num? lat;
  final num? lon;

  @override
  State<ProfileBar> createState() => _ProfileBarState();
}

class _ProfileBarState extends State<ProfileBar> {
  String location = '';
  bool withLocation = false;
  @override
  void initState() {
    if (widget.lat != 0 && widget.lon != 0) {
      withLocation = true;
      getLocation(widget.lat!.toDouble(), widget.lon!.toDouble());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
            ),
            child: Image.network(
              widget.imageUrl,
              fit: BoxFit.fill,
              width: 40,
              height: 40,
              errorBuilder: (context, error, stackTrace) => const Center(
                  child: Text(
                "Image could't be loaded",
                textAlign: TextAlign.center,
              )),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: myTextTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              if (withLocation)
                GestureDetector(
                  onTap: () =>
                      context.push('/map?lat=${widget.lat}&lon=${widget.lon}'),
                  child: Text(
                    location,
                    style: myTextTheme.titleSmall
                        ?.copyWith(fontWeight: FontWeight.w300),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  void getLocation(double lat, double lon) async {
    print('$lat, $lon');
    final info = await geo.placemarkFromCoordinates(
      lat,
      lon,
    );
    final place = info[0];
    setState(() {
      if (place.administrativeArea == null) {
        location = place.country!;
      } else {
        location = '${place.administrativeArea}, ${place.country}';
      }
    });
  }
}
