import "package:exercise_app_ui/constants.dart";
import "package:exercise_app_ui/widgets/bottom_nav_bar.dart";
import "package:exercise_app_ui/widgets/search_bar.dart";
import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter_svg/flutter_svg.dart";

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: <Widget>[
            Container(
              height: size.height * 0.45,
              decoration: BoxDecoration(
                color: colorMed1,
              ),
            ),
            Positioned(
                left: 200,
                width: 350,
                child: SvgPicture.asset("assets/images/meditation1.svg")),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: size.height * .05,
                      ),
                      Text(
                        "Meditation",
                        style: Theme.of(context)
                            .textTheme
                            .headline1
                            ?.copyWith(fontSize: 30, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "3-10 MIN Course",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          width: size.width * 0.7,
                          child: Text(
                            "Live happier and healthier by learning the fundamentals of meditations nad mindfulness",
                            style: TextStyle(
                              fontFamily: "Roboto",
                            ),
                          )),
                      SizedBox(width: size.width * .5, child: Search_Bar()),
                      Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        children: <Widget>[
                          SessionCard(
                            sessionNum: 1,
                            isDone: true,
                            press: () {},
                          ),
                          SessionCard(
                            sessionNum: 2,
                            press: () {},
                          ),
                          SessionCard(
                            sessionNum: 3,
                            press: () {},
                          ),
                          SessionCard(
                            sessionNum: 4,
                            press: () {},
                          ),
                          SessionCard(
                            sessionNum: 5,
                            press: () {},
                          ),
                          SessionCard(
                            sessionNum: 6,
                            press: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Meditation",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: kTextColor),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        padding: EdgeInsets.all(10),
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 15),
                                blurRadius: 11,
                                spreadRadius: -20,
                              )
                            ]),
                        child: Row(children: <Widget>[
                          SvgPicture.asset(
                            "assets/images/meditation1.svg",
                            alignment: Alignment.centerLeft,
                            width: 85,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Basics 2",
                                      style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15
                                      ),
                                    ),
                                    Text("Start your deepen you practice"),
                                  ]
                                ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(Icons.lock_outline, size: 30, color: Colors.grey,)
                          )
                        ]
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class SessionCard extends StatelessWidget {
  final int? sessionNum;
  final bool isDone;
  final Function()? press;
  const SessionCard({
    super.key,
    this.sessionNum,
    this.isDone = false,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        clipBehavior: Clip.none,
        child: Container(
          width: constraint.maxWidth / 2 - 10,
          //padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 15),
                  blurRadius: 11,
                  spreadRadius: -20,
                )
              ]),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                          color: isDone ? colorMed2 : Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: colorMed2)),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : colorMed2,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Session $sessionNum",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
