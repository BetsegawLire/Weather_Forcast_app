// import 'dart:html';

// import 'dart:html';

import 'package:flutter/material.dart';

import 'package:clima/screens/location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:clima/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  var latitude;
  var longitude;
  void getLocation() async {
    var data = await WeatherModel().getLocationWeather();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeather: data,
      );
    }));
    // getDate();
    // print(location.longitude);
  }

  // void getDate() async {
  //   Uri url = Uri.parse(
  //       'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');

  //   http.Response response = await http.get(url);

  //   if (response.statusCode == 200) {
  //     var data = response.body;
  //     var deocdedData = jsonDecode(data);

  //     double temp = deocdedData["main"]["temp"];
  //     int condition = deocdedData["weather"][0]["id"];
  //     String city = deocdedData["name"];

  //     print(temp);
  //     print(condition);
  //     print(city);
  //   } else {
  //     print(response.statusCode);
  //   }
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitFadingFour(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
