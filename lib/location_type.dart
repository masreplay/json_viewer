import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

bool isLatitudeValue(num value) {
  return value < 90 && value > -90;
}

bool isLatitudeKey(String key) {
  return ["latitude", "lat"].contains(key.toLowerCase());
}

bool isLongitudeValue(num value) {
  return value < 180 && value > -180;
}

bool isLongitudeKey(String key) {
  return ["longitude", "lng", "lang", "long"].contains(key.toLowerCase());
}

extension on BuildContext {
  // ignore: unused_element
  void showGoogleMapDialog(LatLng location) {
    showDialog(
      context: this,
      builder: (context) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox.square(
              dimension: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: location,
                    zoom: 17,
                  ),
                  markers: {
                    Marker(
                      markerId: MarkerId(location.toString()),
                      position: location,
                    )
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
