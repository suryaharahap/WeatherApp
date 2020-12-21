import 'package:flutter/material.dart';

import '../constants.dart';

class SidebarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        print("Sidebar menu button");
      },
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      constraints: BoxConstraints(
        maxWidth: 50.0,
        maxHeight: 50.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          boxShadow: [
            BoxShadow(
              color: kShadowColor,
              offset: Offset(0, 12),
              blurRadius: 16.0,
            ),
          ],
        ),
        child: Image.asset('asset/icons/icon-menu.png'),
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      ),
    );
  }
}
