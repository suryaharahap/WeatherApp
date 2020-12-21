import 'package:flutter/material.dart';

class City {
  City({
    this.cityTitle,
    this.citySubtitle,
    this.background,
    this.illustration,
    this.logo,
  });

  String cityTitle;
  String citySubtitle;
  LinearGradient background;
  String illustration;
  String logo;
}

// recent City
var recentCity = [
  City(
    cityTitle: "Heavy Rain",
    citySubtitle: "Bandung",
    background: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF00AEFF),
        Color(0xFFFD504F),
      ],
    ),
    illustration: 'saviens-01.png',
    logo: 'heavy-rain-logo.png',
  ),
  City(
    cityTitle: "Sunny Cloud",
    citySubtitle: "Jakarta",
    background: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFFD504F),
        Color(0xFF00E1EE),
      ],
    ),
    illustration: 'saviens-02.png',
    logo: 'sunny-cloud-logo.png',
  ),
  City(
    cityTitle: "Sunny",
    citySubtitle: "Manado",
    background: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF00E1EE),
        Color(0xFFFD504F),
      ],
    ),
    illustration: 'saviens-03.png',
    logo: 'sun-logo.png',
  ),
];
