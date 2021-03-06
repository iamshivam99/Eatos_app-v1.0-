import 'package:flutter/material.dart';

import '../constants.dart';

class CartItemContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    image: DecorationImage(
                      image: AssetImage("images/ChocolateShake1.jpeg"),
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                width: 30.0,
              ),
              Text(
                'Chocolate Shake',
                style: kFoodTitleStyle,
              ),
              SizedBox(
                width: 30.0,
              ),
              Text(
                '1',
                style: kFoodTitleStyle,
              )
            ],
          ),
        ),
        Container(
          height: 2.0,
          width: double.infinity,
          color: kPrimaryColor.withOpacity(0.5),
          margin: EdgeInsets.symmetric(vertical: 10.0),
        ),
      ],
    );
  }
}
