import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medcinerminder/components/reusable/elevetedbutton.dart';
import 'package:medcinerminder/components/reusable/textfield.dart';
import 'package:medcinerminder/constants/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children:[
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/logo.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Medicine Reminder',
              style: TextStyle(color: AppColors.defaultColor),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: double.infinity,

                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 5.0,
                      )
                    ],
                    borderRadius:
                    BorderRadius.only(topRight: Radius.circular(60))),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Let\'s Create Account',
                        style: TextStyle(
                            color: AppColors.defaultColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DefaultTextField(
                        hintText: 'Name',
                        hintTextFontSize: 15,
                        hintTextColor: AppColors.defaultColor,
                        textInputType: TextInputType.name,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DefaultTextField(
                        hintText: 'Age',
                        hintTextFontSize: 15,
                        hintTextColor: AppColors.defaultColor,
                        textInputType: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DefaultTextField(
                        hintText: 'Email',
                        hintTextFontSize: 15,
                        hintTextColor: AppColors.defaultColor,
                        textInputType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DefaultTextField(
                        hintText: 'Password',
                        hintTextFontSize: 15,
                        hintTextColor: AppColors.defaultColor,
                        textInputType: TextInputType.visiblePassword,
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: AppColors.defaultColor,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(child: DefaultElevatedButton(onPressed: (){},text: 'SignUp',onPrimary: AppColors.whiteColor,primary: AppColors.defaultColor,paddingHorizontal: 25,minimumSizeX: 250,minimumSizeY: 40,fontSize: 20,)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
