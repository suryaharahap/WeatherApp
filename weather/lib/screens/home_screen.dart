import 'package:flutter/material.dart';
import 'package:weather/components/home_screen_navbar.dart';
import 'package:weather/components/list/recent_city_list.dart';
import 'package:weather/components/list/today_city_list.dart';

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBackgroundColor,
        child: SafeArea(
          child: ListView(
            children: [
              HomeScreenNavBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 5.0),
                    Text(
                      "Recent",
                      style: kLargeTitleStyle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              RecentCityList(),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today",
                      style: kTitle1Style,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TodayCityList(
                      imageUrl: 'asset/images/today-01.png',
                      city: "Manado",
                      description: "Sunny Cloud",
                      suhu: "26°C",
                    ),
                    TodayCityList(
                      imageUrl: 'asset/images/today-02.png',
                      city: "Aceh",
                      description: "Sunny Cloud",
                      suhu: "28°C",
                    ),
                    TodayCityList(
                      imageUrl: 'asset/images/today-03.png',
                      city: "Denpasar",
                      description: "Cloud",
                      suhu: "23°C",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
