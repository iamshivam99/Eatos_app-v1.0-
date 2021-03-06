import 'package:flutter/material.dart';

class MainCourseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                        text: 'Main Course \n',
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
        Expanded(
          child: Container(),
        ),
      ],
    );
  }
}
