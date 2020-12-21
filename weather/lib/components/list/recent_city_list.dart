import 'package:flutter/material.dart';
import 'package:weather/components/cards/recent_city_card.dart';
import 'package:weather/model/city.dart';

class RecentCityList extends StatefulWidget {
  @override
  _RecentCityListState createState() => _RecentCityListState();
}

class _RecentCityListState extends State<RecentCityList> {
  List<Container> indicators = [];
  int currentPage = 0;

  Widget updateIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: recentCity.map(
        (city) {
          var index = recentCity.indexOf(city);
          return Container(
            width: 7.0,
            height: 7.0,
            margin: EdgeInsets.symmetric(horizontal: 6.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  currentPage == index ? Color(0xFF0971FE) : Color(0xFFA6AEBD),
            ),
          );
        },
      ).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 280,
          width: double.infinity,
          child: PageView.builder(
            itemBuilder: (context, index) {
              return Opacity(
                opacity: currentPage == index ? 1.0 : 0.5,
                child: RecentCityCard(
                  city: recentCity[index],
                ),
              );
            },
            itemCount: recentCity.length,
            controller: PageController(initialPage: 0, viewportFraction: 0.63),
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
          ),
        ),
        updateIndicators(),
      ],
    );
  }
}
