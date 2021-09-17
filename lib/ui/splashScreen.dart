import 'package:flutter/material.dart';
import 'package:medcinerminder/components/reusable/elevetedbutton.dart';
import 'package:medcinerminder/constants/colors.dart';

import 'authScreens/loginScreen/loginScreen.dart';
import 'authScreens/signupScreen/signupScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(image: AssetImage('images/menwoman.png')),
            Text(
              'Health Reminder',
              style: TextStyle(
                fontFamily: 'Square721 BT',
                fontSize: 31,
                color: const Color(0xff01937c),
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              'Lorem Ipsum is simply dummy text of\nthe printing and typesetting industry \nLorem Ipsum has been the industry\'s\nstandard dummy text ever since, \nwhen an unknown printer took a galley \nof type and scrambled',
              style: TextStyle(
                fontFamily: 'Square721 BT',
                fontSize: 19,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.center,
            ),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DefaultElevatedButton(
                  onPrimary: AppColors.defaultColor,
                  primary: AppColors.accentColor,
                  text: 'Sign up',
                  onPressed: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                  minimumSizeX: 88,
                  minimumSizeY: 36,
                  paddingHorizontal: 16,
                  fontSize: 20,
                ),
                DefaultElevatedButton(
                  onPrimary: AppColors.accentColor,
                  primary: AppColors.defaultColor,
                  text: 'Login in',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  minimumSizeX: 88,
                  minimumSizeY: 36,
                  paddingHorizontal: 16,
                  fontSize: 20,
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
