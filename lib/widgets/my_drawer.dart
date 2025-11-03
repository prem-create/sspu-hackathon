import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  
  Text drawerText(String text){
    return Text(text,
            style: TextStyle(
              fontFamily: 'inter',
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
            
          );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(

      backgroundColor: Colors.white,
      child:ListView(
        children: [
          ListTile(
            leading: Icon(Icons.calendar_month_outlined),
            title: drawerText('Timetable Generation') ,
            onTap: () => context.go('/timetableGenerationPage'),
          ),
          ListTile(
            leading: Icon(Icons.admin_panel_settings_outlined),
            title: drawerText('Timetable View') ,
            onTap: () {},
          )
        ],
      )
    );
  }
}