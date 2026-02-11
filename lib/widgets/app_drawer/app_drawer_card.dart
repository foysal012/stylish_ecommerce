import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppDrawerCard extends StatelessWidget {
  const AppDrawerCard({
    super.key,
    required this.iconData,
    required this.name,
  });

  final String name;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white
          ),
          child: Icon(
            // Icons.shopping_bag_outlined,
              iconData,
              color: Colors.red),
        ),
        Gap(20.0),

        Text(
          // 'My Orders',
          name,
          style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}