import 'package:flutter/material.dart';
import 'package:medcinerminder/components/reusable/textbutton.dart';
import 'package:medcinerminder/ui/add_medicine_Screen.dart';
import 'package:medcinerminder/ui/editPageScrean.dart';
import 'package:medcinerminder/ui/profileScreen.dart';

enum MenuOption { Profile, Add, Edit }

class PopUpOptionMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext contetxt) {
        return <PopupMenuEntry<MenuOption>>[
          PopupMenuItem(
            child: TextButtonDefult(
              primary: Colors.black,
              onPressed: () { Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()),
                    );},
              text: 'Profile',
            ),
            value: MenuOption.Profile,
          ),
          PopupMenuItem(
            child: TextButtonDefult(
              primary: Colors.black,
              onPressed: () {
                 Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddMedicine()),
                    );
              },
              text: 'Add',
            ),
            value: MenuOption.Add,
          ),
          PopupMenuItem(
            child: TextButtonDefult(
              primary: Colors.black,
              onPressed: () {
                 Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditMedicine()),
                    );
              },
              text: 'Edit',
            ),
            value: MenuOption.Edit,
          ),
        ];
      },
    );
  }
}
