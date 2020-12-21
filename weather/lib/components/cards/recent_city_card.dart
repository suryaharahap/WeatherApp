import 'package:flutter/material.dart';
import 'package:weather/model/city.dart';
import '../../constants.dart';

class RecentCityCard extends StatelessWidget {
  RecentCityCard({this.city});

  City city;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 22.0),
          child: Container(
            width: 210,
            height: 210,
            decoration: BoxDecoration(
              gradient: city.background,
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: city.background.colors[0].withOpacity(0.3),
                  offset: Offset(0, 20),
                  blurRadius: 30.0,
                ),
                BoxShadow(
                  color: city.background.colors[1].withOpacity(0.3),
                  offset: Offset(0, 20),
                  blurRadius: 30.0,
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 32.0,
                    left: 32.0,
                    right: 32.0,
                    bottom: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        city.citySubtitle,
                        style: kCardSubtitleStyle,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        city.cityTitle,
                        style: kCardTitleStyle,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'asset/illustrations/${city.illustration}',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 22.0),
          child: Container(
            child: Image.asset('asset/logos/${city.logo}'),
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: kShadowColor,
                  offset: Offset(0, 4),
                  blurRadius: 16.0,
                )
              ],
            ),
            padding: EdgeInsets.all(12.0),
          ),
        ),
      ],
    );
  }
}
