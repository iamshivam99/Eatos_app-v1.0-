import 'package:eatos_app/logic_for_app.dart/cart_functions.dart';
import 'package:flutter/material.dart';
import 'package:eatos_app/constants.dart';

class FoodCard extends StatefulWidget {
  FoodCard(
      {this.foodDescription,
      this.foodImage,
      this.foodName,
      this.foodPrice,
      this.foodSubText});
  final String foodName;
  final String foodPrice;
  final String foodSubText;
  final String foodDescription;
  final String foodImage;

  @override
  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Stack(
        children: [
          Container(
            height: kFoodCardHeight,
            width: kFoodCardWidth,
            decoration: kFoodContainerDeco,
          ),
          Positioned(
            top: 10.0,
            left: 10.0,
            child: Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200.0),
                  image: DecorationImage(
                    image: AssetImage(widget.foodImage),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Positioned(
              left: 180,
              top: 58,
              child: Text(
                widget.foodPrice,
                style: kPriceStyle,
              )),
          Positioned(
            top: 200,
            left: 10,
            child: Container(
              width: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.foodName,
                    style: kFoodTitleStyle,
                  ),
                  Text(
                    widget.foodSubText,
                    style: kDescriptionStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                    width: 250,
                  ),
                  Text(
                    widget.foodDescription,
                    maxLines: 4,
                    textAlign: TextAlign.left,
                    style: kDescriptionTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 380,
            left: 10,
            child: Container(
              height: 50.0,
              width: 260.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Add to Cart:',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        cartRemoveItem();
                        kTotalItemsInCart--;
                      });
                    },
                    child: Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                        color: Colors.orange[400],
                        borderRadius: BorderRadius.circular(45.0),
                      ),
                      child: Icon(
                        Icons.exposure_neg_1,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    kThisItemInCart.toString(),
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        cartAddItem();
                        kTotalItemsInCart++;
                      });
                    },
                    child: Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                        color: Colors.orange[400],
                        borderRadius: BorderRadius.circular(45.0),
                      ),
                      child: Icon(
                        Icons.exposure_plus_1,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
