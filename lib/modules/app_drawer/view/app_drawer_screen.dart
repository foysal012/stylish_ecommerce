import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppDrawerScreen extends StatelessWidget {
  const AppDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: Colors.white,
      backgroundColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(100.0),
            bottomRight: Radius.circular(100.0),
          ),
          color: Colors.red
        ),
        child: Column(
            children: [
              Gap(30.0),

              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                    ),
                    child: Icon(Icons.person, color: Colors.red, size: 50),
                  ),
                  Gap(10.0),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Foysal Joarder',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                      ),
                      Text('joarder9696@gmail.com',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                      )
                    ],
                  )
                ],
              ),
              Gap(20.0),

              Divider(
                color: Colors.white,
                thickness: 3.0,
              ),

              Gap(20.0),

              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                    ),
                    child: Icon(Icons.shopping_bag_outlined, color: Colors.red),
                  ),
                  Gap(20.0),
                  
                  Text('My Orders',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              Gap(10.0),

              Divider(
                color: Colors.white,
                thickness: 1.5
              ),
              Gap(10.0),

              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                    ),
                    child: Icon(Icons.person, color: Colors.red),
                  ),
                  Gap(20.0),

                  Text('My Profile',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              Gap(10.0),

              Divider(
                  color: Colors.white,
                  thickness: 1.5
              ),
              Gap(10.0),

              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                    ),
                    child: Icon(Icons.delivery_dining, color: Colors.red),
                  ),
                  Gap(20.0),

                  Text('Delivery Address',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              Gap(10.0),

              Divider(
                  color: Colors.white,
                  thickness: 1.5
              ),
              Gap(10.0),

              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                    ),
                    child: Icon(Icons.payment, color: Colors.red),
                  ),
                  Gap(20.0),

                  Text('Payment Methods',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              Gap(10.0),

              Divider(
                  color: Colors.white,
                  thickness: 1.5
              ),
              Gap(10.0),

              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                    ),
                    child: Icon(Icons.contrast, color: Colors.red),
                  ),
                  Gap(20.0),

                  Text('Contract Us',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              Gap(10.0),

              Divider(
                  color: Colors.white,
                  thickness: 1.5
              ),
              Gap(10.0),

              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                    ),
                    child: Icon(Icons.help, color: Colors.red),
                  ),
                  Gap(20.0),

                  Text('Help & FAQs',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              Gap(10.0),

              Divider(
                  color: Colors.white,
                  thickness: 1.5
              ),
              Gap(10.0),

              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                    ),
                    child: Icon(Icons.settings, color: Colors.red),
                  ),
                  Gap(20.0),

                  Text('Settings',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              Gap(10.0),

              Divider(
                  color: Colors.white,
                  thickness: 1.5
              ),
              Gap(20.0),

              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                    ),
                    child: Icon(Icons.logout, color: Colors.red),
                  ),
                  Gap(20.0),

                  Text('Log Out',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              Gap(10.0),

            ]
        ),
      ),
    );
  }
}
