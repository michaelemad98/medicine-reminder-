import 'package:flutter/material.dart';
import 'package:medcinerminder/components/reusable/elevetedbutton.dart';
import 'package:medcinerminder/constants/colors.dart';

class EditMedicine extends StatelessWidget {
  const EditMedicine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/capsula.png')),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Paracetamol XL2',
                          style: TextStyle(
                              fontSize: 20, color: AppColors.orangeColor),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                            style: TextStyle(color: AppColors.defaultColor),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            DefaultElevatedButton(
                              minimumSizeY: 40,
                              minimumSizeX: 30,
                              paddingHorizontal: 20,
                              primary: AppColors.darkBlueColor,
                              onPressed: () {},
                              text: 'After BreakFast',
                              onPrimary: AppColors.accentColor,
                              fontSize: 10,
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            DefaultElevatedButton(
                              minimumSizeY: 40,
                              minimumSizeX: 30,
                              paddingHorizontal: 20,
                              primary: AppColors.pinkColor,
                              onPressed: () {},
                              text: 'After Dinner',
                              onPrimary: AppColors.accentColor,
                              fontSize: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Row(children: [
                                Icon(Icons.stacked_bar_chart,color: AppColors.defaultColor,),
                                Column(
                                  children: [
                                    Text('The Month',style: TextStyle(color: AppColors.defaultColor)),
                                    Text('4/31 taken',style: TextStyle(color: AppColors.orangeColor)),
                                  ],
                                ),
                              ],),
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            SizedBox(width: 25,),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Row(children: [
                                Icon(Icons.stacked_bar_chart,color: AppColors.defaultColor,),
                                Column(
                                  children: [
                                    Text('The Month',style: TextStyle(color: AppColors.defaultColor)),
                                    Text('4/31 taken',style: TextStyle(color: AppColors.orangeColor)),
                                  ],
                                ),
                              ],),
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Row(children: [
                                Icon(Icons.stacked_bar_chart,color: AppColors.defaultColor,),
                                Column(
                                  children: [
                                    Text('The Month',style: TextStyle(color: AppColors.defaultColor)),
                                    Text('4/31 taken',style: TextStyle(color: AppColors.orangeColor)),
                                  ],
                                ),
                              ],),
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            SizedBox(width: 25,),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Row(children: [
                                Icon(Icons.stacked_bar_chart,color: AppColors.defaultColor,),
                                Column(
                                  children: [
                                    Text('The Month',style: TextStyle(color: AppColors.defaultColor)),
                                    Text('4/31 taken',style: TextStyle(color: AppColors.orangeColor)),
                                  ],
                                ),
                              ],),
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Center(child: DefaultElevatedButton(onPressed: (){},onPrimary: AppColors.whiteColor,primary: AppColors.defaultColor,paddingHorizontal: 100,minimumSizeX: 50,minimumSizeY: 40,text: 'Edit',fontSize: 15,)),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
