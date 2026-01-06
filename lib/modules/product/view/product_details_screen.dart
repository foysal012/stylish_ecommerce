import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:stylish_ecommerce/core/constants/App_text.dart';

import '../controller/product_details_controller.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {

  final productDetailsController = Get.put(ProductDetailsController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: Color(0xffF2F2F2),
        scrolledUnderElevation: 0.0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black12,
              ),
              child: Icon(Symbols.arrow_back),
            ),
          ),
        ),

        actions: [
          CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black12,
              child: Icon(Symbols.shopping_cart),
          ),
          Gap(10.0)
        ],
      ),

      body: GetBuilder<ProductDetailsController>(
        // init: productDetailsController,
        builder: (controller) => Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product multiple image
              Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                ),
              ),
              Gap(10.0),

              Text('Size: ${controller.size}',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Gap(5.0),

              SizedBox(
                height: 32.0,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    final sizeInfo = controller.sizeList[index];
                    return GestureDetector(
                      onTap: () {
                        controller.setSizeIndex(index);
                        controller.setSize(sizeInfo);
                      },
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          color: controller.sizeIndex == index? Color(0xffFA7189): Colors.transparent,
                          border: controller.sizeIndex == index? null : Border.all(
                              width: 2.0,
                              color: Color(0xffFA7189)
                          ),
                        ),
                        child: Text('${sizeInfo}'),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 10.0),
                  itemCount: controller.sizeList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Gap(10.0),

              Text('Nike Sneakers',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),

              Text('Vision Alta Men\'s Shoes Size(All Colors)',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black38
                ),
              ),
              Gap(5.0),

              Row(
                children: [
                  StarRating(
                    size: 20.0,
                    rating: 3.3,
                    color: Colors.orange,
                    borderColor: Colors.grey,
                    allowHalfRating: true,
                    // starCount: starCount,
                    // onRatingChanged: (rating) => setState(() {
                    //   this.rating = rating;
                    // }),
                  ),
                  Text('(869)',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                    ),
                  )
                ],
              ),
              Gap(5.0),

              Row(
                children: [
                  Text('\$1599',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black26,
                        decoration: TextDecoration.lineThrough
                    ),
                  ),
                  Gap(10.0),

                  Text('\$650',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                    ),
                  ),
                  Gap(10.0),

                  Text('60% off',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFE735C)
                    ),
                  ),
                ],
              ),
              Gap(5.0),

              // Product details
              Text('Product Details',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                ),
              ),
              Gap(5.0),

              Text('${AppText.productDetails}',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black26
                ),
              ),
              Gap(10.0),

              // features
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      border: Border.all(width: 2.0, color: Colors.black26)
                    ),
                    child: Row(
                      children: [
                        Icon(Symbols.location_away, color: Colors.black38),
                        Gap(5.0),

                        Text('Nearest Store',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black38
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(10.0),

                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        border: Border.all(width: 2.0, color: Colors.black26)
                    ),
                    child: Row(
                      children: [
                        Icon(Symbols.lock, color: Colors.black38),
                        Gap(5.0),

                        Text('VIP',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black38
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(10.0),

                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        border: Border.all(width: 2.0, color: Colors.black26)
                    ),
                    child: Row(
                      children: [
                        Icon(Symbols.assignment_return, color: Colors.black38),
                        Gap(5.0),

                        Text('Return policy',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black38
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(10.0),

              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          // color: Color(0xff0B3689),
                          gradient: LinearGradient(colors: [
                            Color(0xff3F92FF),
                            Color(0xff0B3689),
                          ])
                        ),
                        child: Text('Go to cart',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),

                      Positioned(
                        left: -1,
                        bottom: 0,
                        child: CircleAvatar(
                          radius: 16.0,
                          backgroundColor: Color(0xff3F92FF),
                          child: Icon(Symbols.shopping_cart, color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ))
    );
  }
}
