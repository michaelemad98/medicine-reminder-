
import 'package:flutter/material.dart';
import 'package:medcinerminder/components/widgets/calender.dart';
import 'package:medcinerminder/constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.accentColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: 500,
                  height: 200,
                  decoration: new BoxDecoration(
                    color: AppColors.defaultColor,
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Welcome, Michael',
                          style: TextStyle(
                              fontFamily: 'Square721 BT',
                              fontSize: 28,
                              color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Your medicines for ',
                            style: TextStyle(
                                fontFamily: 'Square721 BT',
                                fontSize: 19,
                                color: Colors.white),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            ' today',
                            style: TextStyle(
                              fontFamily: 'Square721 BT',
                              fontSize: 19,
                              color: AppColors.orangeColor,
                            ),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          height: 80,
                          decoration: new BoxDecoration(
                            color: AppColors.whiteColor,
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              verticalDirection: VerticalDirection.down,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Next medicine\nin 20 mins',
                                      style: TextStyle(
                                        fontFamily: 'Square721 BT',
                                        fontSize: 12,
                                        color: AppColors.defaultColor,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      'take your BP medicine Diuretics\ntablets along with water,\nafter Breakkfast',
                                      style: TextStyle(
                                        fontFamily: 'Square721 BT',
                                        fontSize: 8,
                                        color: AppColors.BlackColor,
                                      ),
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'coveram ',
                                      style: TextStyle(
                                          fontFamily: 'Square721 BT',
                                          fontSize: 30,
                                          color: AppColors.orangeColor),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      '9:00 AM',
                                      style: TextStyle(
                                          fontFamily: 'Square721 BT',
                                          fontSize: 19,
                                          color: AppColors.orangeColor),
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                ),
                                Image.asset(
                                  'images/type1.png',
                                  height: 50,
                                  width: 50,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: new BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Reminder',
                          style: TextStyle(
                            fontFamily: 'Square721 BT',
                            fontSize: 25,
                            color: const Color(0xff01937c),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      CalenderWidget()
                     
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: new BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(children: [
                      Image.asset(
                                  'images/capsula.png',
                                  height: 50,
                                  width: 50,
                                ),
                                Column(children: [
                                  Text(
    'Paracetamol XL2',
    style: TextStyle(
      fontFamily: 'Square721 BT',
      fontSize: 31,
      color: const Color(0xffe8bd54),
    ),
    textAlign: TextAlign.left,
  ),
  Text(
    '2:30 PM',
    style: TextStyle(
      fontFamily: 'Square721 BT',
      fontSize: 24,
      color: const Color(0xff01937c),
    ),
    textAlign: TextAlign.left,
  ),
                                ],)
                    ],),
                    ),
              ),
                           Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: new BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(children: [
                      Image.asset(
                                  'images/type3.png',
                                  height: 50,
                                  width: 50,
                                ),
                                Column(children: [
                                  Text(
    'Abacavir',
    style: TextStyle(
      fontFamily: 'Square721 BT',
      fontSize: 31,
      color: const Color(0xffe8bd54),
    ),
    textAlign: TextAlign.left,
  ),
  Text(
    '9:30 PM',
    style: TextStyle(
      fontFamily: 'Square721 BT',
      fontSize: 24,
      color: const Color(0xff01937c),
    ),
    textAlign: TextAlign.left,
  ),
                                ],)
                    ],),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
