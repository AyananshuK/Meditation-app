import 'package:exercise_app_ui/constants.dart';
import 'package:exercise_app_ui/screens/details_screen.dart';
import 'package:exercise_app_ui/widgets/bottom_nav_bar.dart';
import 'package:exercise_app_ui/widgets/menuCards.dart';
import 'package:exercise_app_ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercise App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kBackgroundColor),
        textTheme: TextTheme(
            headline1: TextStyle(
          fontFamily: "Roboto",
          color: kTextColor,
        )),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar: BottomNavBar(),
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: <Widget>[
            Container(
              height: size.height * .45,
              decoration: BoxDecoration(
                  color: color1,
                  image: DecorationImage(
                    alignment: Alignment.center,
                    opacity: 150,
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/Meditation1.jpg"),
                  )),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          //color: color2,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: SvgPicture.asset("assets/images/menu.svg"),
                        ),
                      ),
                    ),
                    Text(
                      "Hello\nAyananshu Koner",
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          ?.copyWith(fontSize: 35, fontWeight: FontWeight.w900),
                    ),
                    Search_Bar(),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: .85,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        scrollDirection: Axis.vertical,
                        children: <Widget>[
                          MenuCards(
                            imgSrc: "assets/images/hamburger.png",
                            title: "Diet Recomendation",
                            press: () {},
                          ),
                          MenuCards(
                            imgSrc: "assets/images/exercise.png",
                            title: "Exercises",
                            press: () {},
                          ),
                          MenuCards(
                            imgSrc: "assets/images/meditation.png",
                            title: "Meditaion",
                            press: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DetailsScreen();
                              }));
                            },
                          ),
                          MenuCards(
                            imgSrc: "assets/images/yoga.png",
                            title: "Yoga",
                            press: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}



