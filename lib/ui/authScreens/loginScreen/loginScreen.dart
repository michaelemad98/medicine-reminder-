import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medcinerminder/components/reusable/textfield.dart';
import 'package:medcinerminder/constants/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/logo.png'),),
              ),
            ),
            const SizedBox(height: 20,),
            const Text('Medicine Reminder',style: TextStyle(color: AppColors.defaultColor),),
            const SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 5.0,
                  )],
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(60))),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Let\'s Sign You In',style: TextStyle(color: AppColors.defaultColor,fontSize: 15,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 20,),
                    DefaultTextField(hintText: 'Email',hintTextColor: AppColors.defaultColor,),
                    const SizedBox(height: 20,),
                    DefaultTextField(hintText: 'Password',hintTextColor: AppColors.defaultColor,suffixIcon: Icon(Icons.visibility,color: AppColors.defaultColor,),),
                    const SizedBox(height: 20,),
                Row(children: [
                  Text('Mostafa'),
                ],),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
