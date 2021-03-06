import 'package:flutter/material.dart';

const kTotalAmount = 1000;

const kBorderRadius = 20.0;
const kFoodCardHeight = 480.0;
const kFoodCardWidth = 290.0;

Color kPrimaryColor = Colors.orangeAccent;
Color kFoodBGColor = Colors.orange[200];
Color kBackgroundColor = Colors.black;
Color kScrolFoodActive = Colors.orangeAccent;
Color kScrolFoodInActive = Colors.white.withOpacity(.75);

TextStyle kScrollBar = TextStyle(
  color: Colors.white.withOpacity(0.5),
  fontSize: 18.0,
  fontWeight: FontWeight.normal,
);

BoxDecoration kFoodContainerDeco = BoxDecoration(
  color: kFoodBGColor,
  borderRadius: BorderRadius.only(bottomRight: Radius.circular(80.0)),
);

BoxDecoration kFoodSearchBar = BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: kScrolFoodInActive,
      width: 1.0,
    ));

TextStyle kPriceStyle = TextStyle(
    fontSize: 24.0, color: Colors.redAccent[700], fontWeight: FontWeight.bold);

TextStyle kDescriptionStyle = TextStyle(
    fontSize: 20.0,
    color: Colors.black.withOpacity(0.75),
    fontWeight: FontWeight.bold);

TextStyle kDescriptionTextStyle = TextStyle(
    fontSize: 18.0,
    color: Colors.black.withOpacity(0.65),
    fontWeight: FontWeight.bold);

TextStyle kFoodTitleStyle =
    TextStyle(fontSize: 26.0, color: Colors.black, fontWeight: FontWeight.bold);

TextStyle kCartItemStyle = TextStyle(
  fontSize: 24.0,
  color: Colors.green[600],
  fontWeight: FontWeight.bold,
);
