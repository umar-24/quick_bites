import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quick_bites/core/widgets/heading_text.dart';
import 'package:quick_bites/core/widgets/my_list_tile.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

            title: Text('Settings',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
            centerTitle: true,
          ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Profile',style: TextStyle(color: Colors.grey,fontSize: 20),),
            MyListTile(
              title: 'Push Notification',
              trailing: Switch(value: isSwitched1, onChanged: (value){
                setState(() {
                  isSwitched1 = value;
                });
              },
                activeColor: Colors.white,
                activeTrackColor: Colors.orange, // Track color when ON
                inactiveThumbColor: Colors.white, // Thumb color when OFF
                inactiveTrackColor: Colors.grey.shade300,
              ),
            ),
            MyListTile(
              title: 'Location',
              trailing: Switch(value: isSwitched2, onChanged: (value){
                setState(() {
                  isSwitched2 = value;
                });
              },
                activeColor: Colors.white,
                activeTrackColor: Colors.orange, // Track color when ON
                inactiveThumbColor: Colors.white, // Thumb color when OFF
                inactiveTrackColor: Colors.grey.shade300,
              ),
            ),
            MyListTile(
              title: "Language",
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){},
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment:CrossAxisAlignment.start ,

              children: [
                Text ('Others',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey)),
                MyListTile(
                  title: "About Ticket",
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: (){},
                ),
                MyListTile(
                  title: "Privacy policy",
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: (){},
                ),
                MyListTile(
                  title: "Term & Condition",
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: (){},
                ),
              ],
            )
              ],
          
        ),
        
      ) ,
      );

  }
}
