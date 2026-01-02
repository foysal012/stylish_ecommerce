import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:material_symbols_icons/symbols.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: Color(0xffF2F2F2),
        leadingWidth: 40,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[500],
            ),
            child: Icon(Symbols.arrow_back),
          ),
        ),

        title: Text('Account', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.grey[300]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          color: Colors.purple
                        ),
                      ),
                      Gap(10.0),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Foysal Joarder',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                          ),
                          Text('foysal888@gmail.com',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black38
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Icon(Symbols.edit)
                ],
              ),
            ),
            Gap(10.0),

            Text('Settings', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)),
            Gap(5.0),
            
            ListTile(
              tileColor: Colors.grey[300],
              leading: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white
                ),
                child: Icon(Symbols.lab_profile),
              ),
              
              title: Text('Account Details', style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold)),
              
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Gap(10.0),

            ListTile(
              tileColor: Colors.grey[300],
              leading: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white
                ),
                child: Icon(Symbols.notification_add),
              ),

              title: Text('Notifications', style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold)),

              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Gap(10.0),

            ListTile(
              tileColor: Colors.grey[300],
              leading: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white
                ),
                child: Icon(Symbols.email),
              ),

              title: Text('Email', style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold)),

              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Gap(10.0),

            ListTile(
              tileColor: Colors.grey[300],
              leading: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white
                ),
                child: Icon(Symbols.moved_location),
              ),

              title: Text('Location Services', style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold)),

              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Gap(10.0),

            ListTile(
              tileColor: Colors.grey[300],
              leading: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white
                ),
                child: Icon(Symbols.logout),
              ),

              title: Text('Log Out', style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold)),

              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Gap(10.0),

            Text('Support', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)),
            Gap(5.0),

            ListTile(
              tileColor: Colors.grey[300],
              leading: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white
                ),
                child: Icon(Symbols.help),
              ),

              title: Text('Help Center', style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold)),

              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Gap(10.0),

            ListTile(
              tileColor: Colors.grey[300],
              leading: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white
                ),
                child: Icon(Symbols.terminal_sharp),
              ),

              title: Text('Terms & Conditions', style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold)),

              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Gap(10.0),
          ],
        ),
      ),
    );
  }
}
