import 'package:eatos_app/Components/food_items_lower_buttons.dart';
import 'package:flutter/material.dart';
import 'package:eatos_app/constants.dart';
import 'package:flutter/rendering.dart';
import 'package:eatos_app/Components/food_scroll_bar.dart';
import 'package:eatos_app/Components/food_card.dart';

class BeveragesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    color: Colors.white,
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
                            text: 'Beverages \n',
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
              color: kPrimaryColor.withOpacity(0.5),
              margin: EdgeInsets.symmetric(vertical: 10.0),
            ),
            FoodScrollBar(),
            Container(
              height: 2.0,
              width: double.infinity,
              color: kPrimaryColor.withOpacity(0.5),
              margin: EdgeInsets.symmetric(vertical: 10.0),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FoodCard(
                      foodName: 'Chocolate Shake',
                      foodDescription:
                          '“Life is like chocolate: you should enjoy it piece for piece and let it slowly melt on your tongue.”',
                      foodPrice: 'Rs\n200',
                      foodSubText: 'With Choco Rolls',
                      foodImage: "images/ChocolateShake1.jpeg",
                    ),
                    FoodCard(
                      foodName: 'Chocolate Shake',
                      foodDescription:
                          '“Anything is good if it is made of chocolate.”',
                      foodPrice: 'Rs\n250',
                      foodSubText: 'With Ice Cream & ChocoBalls',
                      foodImage: "images/ChocolateShake2.jpeg",
                    ),
                    FoodCard(
                      foodName: 'Strawberry Milkshake',
                      foodDescription:
                          '“Keep Calm and Drink a Strawberry Milkshake.”',
                      foodPrice: 'Rs\n280',
                      foodSubText: 'With Ice Cream',
                      foodImage: "images/StrawberryShake.jpeg",
                    ),
                    FoodCard(
                      foodName: 'Dalgona Cold Coffee',
                      foodDescription:
                          '“Stresses, Blesses or Coffee Obsessed.”',
                      foodPrice: 'Rs\n180',
                      foodSubText: 'With Ice Cream',
                      foodImage: "images/DalgonaCoffee.jpeg",
                    ),
                  ],
                ),
              ),
            ),
            FoodItemLowerButtons()
          ],
        ),
      ),
    );
  }
}
