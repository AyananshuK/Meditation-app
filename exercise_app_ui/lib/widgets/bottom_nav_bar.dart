
import 'package:exercise_app_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNav(
            svgImg: "assets/images/calendar.svg",
            title: "Today",

          ),
          BottomNav(
            svgImg: "assets/images/dumbbell.svg",
            title: "All Exercises",
            isActive: true,
          ),
          BottomNav(
            svgImg: "assets/images/settings.svg",
            title: "Settings",
          ),
        ],
      ),
    );
  }
}

class BottomNav extends StatelessWidget {
  final String svgImg;
  final String title;
  final Function()? press;
  final bool isActive;
  const BottomNav({
    super.key,
    required this.svgImg,
    required this.title,
    this.press,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgImg,
            height: 30,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
