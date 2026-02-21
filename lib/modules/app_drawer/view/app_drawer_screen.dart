import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../widgets/app_drawer/app_drawer_card.dart';

class AppDrawerScreen extends StatelessWidget {
  const AppDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      width: 300.0,
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
                  ),
                  Gap(10.0),

                  InkWell(
                    onTap: (){},
                    child: Icon(Icons.more_vert, color: Colors.white),
                  )
                ],
              ),
              Gap(20.0),

              Divider(
                color: Colors.white,
                thickness: 3.0,
              ),
              Gap(20.0),

              AppDrawerCard(iconData: Icons.shopping_bag_outlined, name: 'My Orders'),
              Gap(10.0),

              Divider(
                color: Colors.white,
                thickness: 1.5
              ),
              Gap(10.0),

              AppDrawerCard(iconData: Icons.person, name: 'My Profile'),
              Gap(10.0),

              Divider(
                  color: Colors.white,
                  thickness: 1.5
              ),
              Gap(10.0),

              AppDrawerCard(iconData: Icons.delivery_dining, name: 'Delivery Address'),
              Gap(10.0),

              Divider(
                  color: Colors.white,
                  thickness: 1.5
              ),
              Gap(10.0),

              AppDrawerCard(iconData: Icons.payment, name: 'Payment Methods'),
              Gap(10.0),

              Divider(
                  color: Colors.white,
                  thickness: 1.5
              ),
              Gap(10.0),

              AppDrawerCard(iconData: Icons.contrast, name: 'Contract Us'),
              Gap(10.0),

              Divider(
                  color: Colors.white,
                  thickness: 1.5
              ),
              Gap(10.0),

              AppDrawerCard(iconData: Icons.help, name: 'Help & FAQs'),
              Gap(10.0),

              Divider(
                  color: Colors.white,
                  thickness: 1.5
              ),
              Gap(10.0),

              AppDrawerCard(iconData: Icons.settings, name: 'Settings'),
              Gap(10.0),

              Divider(
                  color: Colors.white,
                  thickness: 1.5
              ),
              Gap(20.0),

              AppDrawerCard(iconData: Icons.logout, name: 'Log Out'),
              Gap(10.0),

            ]
        ),
      ),
    );
  }
}
