import 'package:flutter/material.dart';

class DeafultButtonEvelete extends StatelessWidget {
    
    final Color onprimary;
    final Color primary;
    final GestureTapCallback onpreased;
    final String Texts;
   


  const DeafultButtonEvelete({required this.onprimary,required this.primary,required this.onpreased,required this.Texts,});

//  final  ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
//     onPrimary: Colors.black,
//     primary: Colors.white,
//     minimumSize: Size(88, 36),
//     padding: EdgeInsets.symmetric(horizontal: 16),
//     shape: const RoundedRectangleBorder(
//       borderRadius: BorderRadius.all(Radius.circular(20)),
//     ),
//   );
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style:ElevatedButton.styleFrom(
          onPrimary: onprimary,
          primary: primary,
          minimumSize: Size(88, 36),
           padding: EdgeInsets.symmetric(horizontal: 16),
     shape: const RoundedRectangleBorder(
       borderRadius: BorderRadius.all(Radius.circular(12)),
     ),
        ) ,
        onPressed: onpreased,
        child: Text(Texts));
  }
}
