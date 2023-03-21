import 'package:flutter/material.dart';
import 'onboarding/create_account.dart';
import 'package:flutter/src/material/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreateAccount(),
    );
  }
}

//make reuseable textbutton


//Arc color pallet
class AppColor {
  static   Color textColor1 = Colors.white;
  static   Color textColor2 = Colors.grey;
  static   Color backgroundColor = Color(0xdd000000);

}


//Arc reusuable text, Apptext error. Reason = unknown

// AppText ({required String text, required textColor, }) {
//   Text(
//     text,
//     style: TextStyle(
//         color: textColor,
//         fontWeight: FontWeight.w400,
//         fontSize: 14
//     ),
//   );
// }