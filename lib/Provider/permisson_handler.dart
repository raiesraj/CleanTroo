import 'package:flutter/foundation.dart';
import 'package:permission_handler/permission_handler.dart';


enum LocationPermissionStatus { granted, denied, unknown }

class LocationPermissionProvider with ChangeNotifier {
  LocationPermissionStatus _permissionStatus = LocationPermissionStatus.unknown;

  LocationPermissionStatus get permissionStatus => _permissionStatus;

  Future<void> checkLocationPermission() async {
    final status = await Permission.location.status;
    _permissionStatus = _mapPermissionStatus(status);
    notifyListeners();
  }

  Future<void> requestLocationPermission() async {
    final status = await Permission.location.request();
    _permissionStatus = _mapPermissionStatus(status);
    notifyListeners();
  }

  LocationPermissionStatus _mapPermissionStatus(PermissionStatus status) {
    if (status.isGranted) {
      return LocationPermissionStatus.granted;
    } else if (status.isDenied) {
      return LocationPermissionStatus.denied;
    } else {
      return LocationPermissionStatus.unknown;
    }

  }
}
