import 'package:flutter/material.dart';

import '../constants.dart';

class SearchFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 13.0,
          right: 15.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: kShadowColor,
                offset: Offset(0, 7),
                blurRadius: 13.0,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.0),
            child: TextField(
              cursorColor: kPrimaryLabelColor,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.search,
                  color: kPrimaryLabelColor,
                  size: 20.0,
                ),
                border: InputBorder.none,
                hintText: "Search for city",
                hintStyle: kSearchPlaceholderStyle,
              ),
              style: kSearchTextStyle,
              onChanged: (newText) {
                print(newText);
              },
            ),
          ),
        ),
      ),
    );
  }
}
