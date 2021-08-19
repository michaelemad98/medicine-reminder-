
import 'package:flutter/material.dart';
import 'package:medcinerminder/components/reusable/buttonwidgets.dart';
import 'package:medcinerminder/constants/colors.dart';

import 'authScreens/loginScreen/loginScreen.dart';

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
      CircleAvatar(child: Icon(Icons.arrow_right_alt,color:Colors.white),backgroundColor:const Color(0xff01937c) ,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DeafultButtonEvelete(onprimary:AppColors.defaultColor ,primary:AppColors.accentColor,Texts: 'Sign up',onpreased: (){
                

              },),
               DeafultButtonEvelete(onprimary:AppColors.accentColor ,primary:AppColors.defaultColor,Texts: 'Login in',onpreased: (){
                 Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );

              },),
            ],
          )
          
          ],),
        ),
        
      )
    );
  }
}
