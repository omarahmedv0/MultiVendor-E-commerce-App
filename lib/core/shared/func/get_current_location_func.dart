import 'package:location/location.dart';

Future<LocationData?> getUserLocation() async {
  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;

  LocationData? _userLocation;

  Location location = Location();

  _serviceEnabled = await location.serviceEnabled();
  if (!_serviceEnabled) {
    _serviceEnabled = await location.requestService();
    if (!_serviceEnabled) {
      return null;
    }
  }

  _permissionGranted = await location.hasPermission();
  if (_permissionGranted == PermissionStatus.denied) {
    _permissionGranted = await location.requestPermission();
    if (_permissionGranted != PermissionStatus.granted) {
      return null;
    }
  }

  final locationData = await location.getLocation();

  _userLocation = locationData;
  return _userLocation;
}
