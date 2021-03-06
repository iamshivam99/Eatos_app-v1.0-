import 'package:flutter/material.dart';
import 'constants.dart';

class MenuContainer extends StatelessWidget {
  MenuContainer({@required this.containerText, @required this.categoryScreen});
  final String containerText;
  final Widget categoryScreen;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return categoryScreen;
        }));
      },
      child: Container(
        height: 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.5),
              spreadRadius: 2.0,
              blurRadius: 2.0,
              offset: Offset(1.0, 1.0),
            ),
          ],
          borderRadius: BorderRadius.circular(15.0),
          color: kPrimaryColor.withOpacity(0.95),
        ),
        margin: EdgeInsets.all(10.0),
        child: Text(
          containerText,
          // ignore: deprecated_member_use
          style: Theme.of(context).textTheme.display2,
        ),
      ),
    );
  }
}
