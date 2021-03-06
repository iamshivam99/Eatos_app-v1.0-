import 'package:flutter/material.dart';
import 'package:eatos_app/constants.dart';

class FoodScrollBar extends StatelessWidget {
  const FoodScrollBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'All',
            style: kScrollBar.copyWith(color: kScrolFoodActive),
          ),
          Text(
            'Cold',
            style: kScrollBar,
          ),
          Text(
            'Hot',
            style: kScrollBar,
          ),
          Container(
            decoration: kFoodSearchBar,
            width: 250.0,
            height: 50.0,
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(
                      fontSize: 18,
                    ),
                    contentPadding: EdgeInsets.only(left: 15.0),
                  ),
                )),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.search,
                    size: 28.0,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
