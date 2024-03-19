
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Search_Bar extends StatelessWidget {
  const Search_Bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(
          horizontal: 26, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextField(
        decoration: InputDecoration(
          icon: Container(
            height: 35,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              "assets/images/search.svg",
              color: Colors.grey,
            ),
          ),
          hintText: "Search",
          border: InputBorder.none,
        ),
      ),
    );
  }
}