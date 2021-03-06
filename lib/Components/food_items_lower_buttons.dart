import 'package:eatos_app/logic_for_app.dart/cart_functions.dart';
import 'package:flutter/material.dart';
import 'package:eatos_app/constants.dart';
import 'package:eatos_app/result_screen.dart';

class FoodItemLowerButtons extends StatelessWidget {
  const FoodItemLowerButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Stack(children: [
            Container(
              child: Icon(
                Icons.shopping_cart,
                color: Colors.black,
                size: 40,
              ),
              height: 80.0,
              width: 80.0,
              decoration: BoxDecoration(
                color: kFoodBGColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(50.0),
                ),
              ),
            ),
            Positioned(
              top: 45.0,
              left: 40.0,
              child: Container(
                child: Center(
                  child: Text(
                    kTotalItemsInCart.toString(),
                    style: kCartItemStyle,
                  ),
                ),
                height: 32.0,
                width: 32.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35.0)),
              ),
            ),
          ]),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ResultScreen();
            }));
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Icon(
                Icons.arrow_forward,
                color: Colors.black,
                size: 40,
              ),
              height: 80.0,
              width: 80.0,
              decoration: BoxDecoration(
                color: kFoodBGColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(50.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
