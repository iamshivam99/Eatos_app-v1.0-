import 'package:eatos_app/bottom_image.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'menu_screen.dart';
import 'bottom_image.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 20.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Welcome Foodies!\n',
                          // ignore: deprecated_member_use
                          style: Theme.of(context).textTheme.display1,
                        ),
                        TextSpan(
                          text: "Get rid of Hunger",
                          // ignore: deprecated_member_use
                          style: Theme.of(context).textTheme.headline,
                        )
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MenuScreen();
                      }));
                    },
                    child: Container(
                      height: 50.0,
                      width: 250.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: kPrimaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: kPrimaryColor.withOpacity(0.5),
                            spreadRadius: 2.0,
                            blurRadius: 2.0,
                            offset: Offset(1.0, 1.0),
                          ),
                        ],
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Dive-in',
                              // ignore: deprecated_member_use
                              style: Theme.of(context).textTheme.display2,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                              size: 30.0,
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(flex: 2, child: BottomImageContainer()),
        ],
      ),
    );
  }
}
