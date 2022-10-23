import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            Text(
              'Settings',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'My Account',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            AccountSetting(
              title: 'Change Password',
            ),
            AccountSetting(
              title: 'djdjdj',
            ),
            AccountSetting(
              title: 'Change Password',
            ),
            AccountSetting(
              title: 'Change Password',
            ),
            AccountSetting(
              title: 'Change Password',
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.volume_up_outlined,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Notifications',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            //The code for the lower part of the Settings Page including the Dark Theme
            ThemeSetting('Dark Theme', true),
            ThemeSetting('Dark Theme', true),
            ThemeSetting('Dark Theme', false),
            SizedBox(
              height: 10.0,
            ),

            //The code for the SIGN OUT Button
            Center(
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  'SIGN OUT',
                  style: TextStyle(
                      fontSize: 16, letterSpacing: 2.2, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }



  //The code for the down part of the Settings Page
  Row ThemeSetting(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              //fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        Switch(
          activeColor: Colors.blue,
          value: isActive,
          onChanged: (bool val) {},
        ),
      ],
    );
  }
}

//The Code for Account Section of the Settings Page
class AccountSetting extends StatelessWidget {
  final title;
  AccountSetting({this.title});
  @override
  Widget build(BuildContext context) {
    return //the code for the Gesture detector wrapping the Row wudget
        GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Change Password'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('ju'),
                    Text('hu'),
                    Text('Moha'),
                    Text('Moha'),
                  ],
                ),
              );
            });
      }, //The code for the rows of the Settings Page
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
