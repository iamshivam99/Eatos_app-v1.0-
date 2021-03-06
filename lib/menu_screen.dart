import 'package:eatos_app/CategoryScreens/beverages.dart';
import 'package:eatos_app/CategoryScreens/desserts.dart';
import 'package:eatos_app/CategoryScreens/lunch.dart';
import 'package:eatos_app/CategoryScreens/maincourse.dart';
import 'package:eatos_app/CategoryScreens/salads.dart';
import 'package:eatos_app/CategoryScreens/starters.dart';
import 'package:eatos_app/constants.dart';
import 'package:flutter/material.dart';
import 'bottom_image.dart';
import 'menu_container.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 25.0,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 15.0),
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Menu \n',
                          // ignore: deprecated_member_use
                          style: Theme.of(context).textTheme.display1,
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 2.0,
            width: double.infinity,
            color: kPrimaryColor.withOpacity(0.25),
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.black12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: MenuContainer(
                        categoryScreen: BeveragesScreen(),
                        containerText: 'Beverages',
                      )),
                      Expanded(
                          child: MenuContainer(
                        categoryScreen: StartersScreen(),
                        containerText: 'Starters',
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: MenuContainer(
                        categoryScreen: LunchScreen(),
                        containerText: 'Lunch',
                      )),
                      Expanded(
                          child: MenuContainer(
                        categoryScreen: SaladScreen(),
                        containerText: 'Salads',
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: MenuContainer(
                        categoryScreen: MainCourseScreen(),
                        containerText: 'Main Course',
                      )),
                      Expanded(
                          child: MenuContainer(
                        categoryScreen: DessertsScreen(),
                        containerText: 'Desserts',
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: BottomImageContainer(),
          ),
        ],
      ),
    );
  }
}
