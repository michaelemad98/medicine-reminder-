import 'package:flutter/material.dart';
import 'package:medcinerminder/components/reusable/elevetedbutton.dart';
import 'package:medcinerminder/components/reusable/textfield.dart';
import 'package:medcinerminder/constants/colors.dart';

class AddMedicine extends StatelessWidget {
  final List<String> imageTypes = [
    'images/type1.png',
    'images/type2.png',
    'images/type3.png',
    'images/type4.png',
  ];

  AddMedicine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: double.infinity,
                      child: Image.asset('images/pick.png', height: 120)),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Medicine Name',
                    style:
                        TextStyle(fontSize: 20, color: AppColors.defaultColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DefaultTextField(
                    hintText: 'Name',
                    hintTextFontSize: 16,
                    hintTextColor: AppColors.greyColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Type',
                    style:
                        TextStyle(fontSize: 20, color: AppColors.defaultColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Expanded(
                child: Container(

                    child: ListView.separated(
                      separatorBuilder: (context,index)=>SizedBox(width: 20,),
                      itemBuilder: (context, index) =>
                          Container(
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.1, 0.1), //(x,y)
                                  blurRadius: 2,
                                ),
                              ],

                            ),
                              child: Image.asset('${imageTypes[index]}',height: 30,width: 30,)),
                      itemCount: imageTypes.length,
                      scrollDirection: Axis.horizontal,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Time & Schedule',
                style: TextStyle(fontSize: 20, color: AppColors.defaultColor),
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
                    width: 10,
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
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,

                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.1, 0.1), //(x,y)
                          blurRadius: 2,
                        ),
                      ],
                    ),
                      child: CircleAvatar(
                    child: Icon(
                      Icons.add,
                      color: AppColors.defaultColor,
                    ),
                    backgroundColor: AppColors.whiteColor,
                  )),

                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(children: [
                  const Text(
                    'Duration',
                    style: TextStyle(fontSize: 20, color: AppColors.defaultColor),
                  ),
                  const SizedBox(width: 100,),
                  const Text(
                    'Frequency',
                    style: TextStyle(fontSize: 20, color: AppColors.defaultColor),
                  ),
                ],),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.1, 0.1), //(x,y)
                        blurRadius: 2,

                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    child: Row(
                      children: [
                        Icon(Icons.date_range_sharp,color: AppColors.defaultColor,),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Month',
                          style: TextStyle(fontSize: 20, color: AppColors.defaultColor),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 50,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.1, 0.1), //(x,y)
                        blurRadius: 2,

                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                    child: Row(
                      children: [
                        Icon(Icons.schedule,color: AppColors.defaultColor,),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Daily',
                          style: TextStyle(fontSize: 20, color: AppColors.defaultColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],),
              const SizedBox(height: 30,),
              Center(
                child: DefaultElevatedButton(onPressed: (){},onPrimary: AppColors.whiteColor,primary: AppColors.defaultColor,paddingHorizontal: 40,minimumSizeX: 15,minimumSizeY: 40,text: 'Add Reminder',fontSize: 15,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
