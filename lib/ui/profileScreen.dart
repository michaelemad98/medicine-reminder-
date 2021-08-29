import 'package:flutter/material.dart';
import 'package:medcinerminder/components/reusable/elevetedbutton.dart';
import 'package:medcinerminder/constants/colors.dart';

class ProfileScreen extends StatefulWidget {
  //const ProfileScreen({ Key? key }) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.create_rounded,
              color: AppColors.BlackColor,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: AppColors.whiteColor,
            child: Image.asset('images/profilephoto.png'),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'Michael emad',
            style: TextStyle(
              fontFamily: 'Square721 BT',
              fontSize: 28,
              color: const Color(0xff01937c),
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
                width: double.infinity,
                height: 200,
                decoration: new BoxDecoration(
                  color: AppColors.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceAround, 
                          children: [
                            Text(
                              'Gander',
                              style: TextStyle(
                                fontFamily: 'Square721 BT',
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                                color: const Color(0xff01937c),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Age',
                              style: TextStyle(
                                fontFamily: 'Square721 BT',
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                                color: const Color(0xff01937c),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Emali',
                              style: TextStyle(
                                fontFamily: 'Square721 BT',
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: const Color(0xff01937c),
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.male,
                                  color: AppColors.defaultColor,
                                ),
                                SizedBox(
                                  width: 16.0,
                                ),
                                Text(
                                  'male',
                                  style: TextStyle(
                                    fontFamily: 'Square721 BT',
                                    fontSize: 18,
                                    color: const Color(0xff01937c),
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                            Text(
                              '30',
                              style: TextStyle(
                                fontFamily: 'Square721 BT',
                                fontSize: 18,
                                color: const Color(0xff01937c),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Michaelemad@gmail.com',
                              style: TextStyle(
                                fontFamily: 'Square721 BT',
                                fontSize: 18,
                                color: const Color(0xff01937c),
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        )
                      ],
                    ))),
          ),
          SizedBox(
            height: 16.0,
          ),
          DefaultElevatedButton(
              onPrimary: AppColors.defaultColor,
              primary: AppColors.whiteColor,
              onPressed: () {},
              text: 'Logout',
              minimumSizeX: 40,
              minimumSizeY: 40,
              paddingHorizontal: 25,
              fontSize: 13),
        ],
      ),
    );
  }
}
