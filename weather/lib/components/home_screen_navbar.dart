import 'package:flutter/material.dart';
import 'package:weather/components/searchfield_widget.dart';
import 'package:weather/components/sidebar_button.dart';

class HomeScreenNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(),
          SearchFieldWidget(),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 18.0,
            backgroundImage: AssetImage('asset/images/user_pic.png'),
          ),
        ],
      ),
    );
  }
}
