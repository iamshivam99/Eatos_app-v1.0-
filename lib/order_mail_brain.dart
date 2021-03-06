import 'constants.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

import 'logic_for_app.dart/cart_functions.dart';

//To use this api enter a valid id here!!!
sendEmail() async {
  String username = '**********@gmail.com';
  String password = '***********';

  final smtpServer = gmail(username, password);

  //Enter the dynamically accessed email id of customer here!!!
  final message = Message()
    ..from = Address(username, 'Eatos App Order Confirmation')
    ..recipients.add('************.com')
    ..subject = 'Order Confirmation: ${DateTime.now()}'
    ..html =
        "<h1>Order Summary</h1>\n<p>Total Amount:$kTotalAmount.<br>Total items: $kTotalItemsInCart</p>";

  try {
    final sendReport = await send(message, smtpServer);
    print('Message sent: ' + sendReport.toString());
  } on MailerException catch (e) {
    print('Message not sent.');
    for (var p in e.problems) {
      print('Problem: ${p.code}: ${p.msg}');
    }
  }
}
