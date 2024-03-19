import "package:flutter/material.dart";

class MenuCards extends StatelessWidget {
  final String title;
  final String imgSrc;
  final Function()? press;
  const MenuCards({
    super.key,
    required this.title,
    required this.imgSrc,  
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 15),
                //blurStyle: BlurStyle.outer,
                blurRadius: 15,
                spreadRadius: -15,
              )
            ]),
        child: Material(
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgSrc), fit: BoxFit.fill)),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          ?.copyWith(fontSize: 15, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
