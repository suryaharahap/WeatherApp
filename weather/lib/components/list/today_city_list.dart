import 'package:flutter/material.dart';

import '../../constants.dart';

class TodayCityList extends StatelessWidget {
  final String imageUrl;
  final String city;
  final String description;
  final String suhu;

  TodayCityList({this.imageUrl, this.city, this.description, this.suhu});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 85.0,
            height: 85.0,
          ),
          SizedBox(
            width: 5.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                city,
                style: kBodyLabelStyle,
              ),
              Text(
                description,
                style: kSecondaryCalloutLabelStyle,
              ),
            ],
          ),
          Spacer(),
          Text(
            suhu,
            style: kCalloutLabelStyle,
          )
        ],
      ),
    );
  }
}
