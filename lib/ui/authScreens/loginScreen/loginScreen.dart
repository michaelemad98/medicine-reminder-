import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medcinerminder/components/reusable/elevetedbutton.dart';
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
                        'Let\'s Sign You In',
                        style: TextStyle(
                            color: AppColors.defaultColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DefaultTextField(
                        hintText: 'Email',
                        hintTextFontSize: 15,
                        hintTextColor: AppColors.defaultColor,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DefaultTextField(
                        hintText: 'Password',
                        hintTextFontSize: 15,
                        hintTextColor: AppColors.defaultColor,
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: AppColors.defaultColor,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'Forget Your Password ?',
                            style: TextStyle(
                                color: AppColors.defaultColor, fontSize: 10),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('OR'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         CircleAvatar(child: Image.asset('images/google.png',fit: BoxFit.cover,height: 25,width: 25,),radius: 30,backgroundColor: Colors.white,),
                         CircleAvatar(child: Image.asset('images/apple.png',fit: BoxFit.fill,height: 25,width: 25,),radius: 30,backgroundColor: Colors.white,),
                         CircleAvatar(child: Image.asset('images/facebook.png',fit: BoxFit.cover,height: 25,width: 25,),radius: 30,backgroundColor: Colors.white,),
                        ],
                      ),
                      Center(child: DefaultElevatedButton(onPressed: (){},text: 'Login',onPrimary: AppColors.whiteColor,primary: AppColors.defaultColor,paddingHorizontal: 25,minimumSizeX: 250,minimumSizeY: 30,)),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text('Don\'t have an account ?'),
                        const SizedBox(
                          width: 10,
                        ),
                        Text('Sign Up',style: TextStyle(color: AppColors.defaultColor),),

                      ],),
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
