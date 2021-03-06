import 'package:flutter/material.dart';
import 'Components/cart_item_container.dart';
import 'constants.dart';
import 'order_mail_brain.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 15.0),
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Cart ',
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
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 500,
                      width: 400,
                      decoration: kFoodContainerDeco.copyWith(
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Column(
                        children: [
                          Text(
                            'Order Summary',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                // ignore: deprecated_member_use
                                .display2
                                .copyWith(fontSize: 32.0),
                          ),
                          Container(
                            height: 2.0,
                            width: double.infinity,
                            color: kPrimaryColor.withOpacity(0.5),
                            margin: EdgeInsets.symmetric(vertical: 10.0),
                          ),
                          Expanded(
                            child: Container(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Container(
                                  child: Column(
                                    children: [
                                      CartItemContainer(),
                                      CartItemContainer(),
                                      CartItemContainer(),
                                      CartItemContainer(),
                                      CartItemContainer(),
                                      CartItemContainer(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 2.0,
                    width: double.infinity,
                    color: kPrimaryColor.withOpacity(0.5),
                    margin: EdgeInsets.only(bottom: 2.0),
                  ),
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total:",
                          style: TextStyle(fontSize: 32, color: Colors.white),
                        ),
                        Text(
                          '$kTotalAmount',
                          style: TextStyle(fontSize: 32, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 2.0,
                    width: double.infinity,
                    color: kPrimaryColor.withOpacity(0.5),
                    margin: EdgeInsets.only(top: 2.0),
                  ),
                  FittedBox(
                    child: GestureDetector(
                      onTap: () {
                        sendEmail();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        decoration: BoxDecoration(
                            color: kFoodBGColor,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Proceed To Pay',
                              // ignore: deprecated_member_use
                              style: Theme.of(context)
                                  .textTheme
                                  // ignore: deprecated_member_use
                                  .display2
                                  .copyWith(color: Colors.red),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 32,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
