import 'package:geolocator/geolocator.dart';

class Location {
  late double laititude;
  late double longitude;

  Future<void> getCurrentLocation() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      laititude = position.latitude;
      longitude = position.longitude;
      // print(position);
    } catch (e) {
      print('Something went wrong');
    }
  }
}
