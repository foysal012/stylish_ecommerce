import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:stylish_ecommerce/core/constants/App_text.dart';

import '../../../core/constants/app_image.dart';
import '../../home/view/home_screen.dart';
import '../controller/product_details_controller.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {

  final productDetailsController = Get.put(ProductDetailsController());

  List<Product> productList = [
    Product(
        productImage: AppImage.productImage1,
        productName: 'Sara watch model xx78',
        ProductNewPrice: '950',
        productOldPrice: '1860',
        productDiscount: '65',
        productRating: '4.5',
        productRatingNumber: '850'
    ),
    Product(
        productImage: AppImage.productImage2,
        productName: 'Gibson watch model xx88',
        ProductNewPrice: '850',
        productOldPrice: '1960',
        productDiscount: '53',
        productRating: '4.3',
        productRatingNumber: '320'
    ),
    Product(
        productImage: AppImage.productImage3,
        productName: 'Apex watch model xx48',
        ProductNewPrice: '750',
        productOldPrice: '1560',
        productDiscount: '46',
        productRating: '4.2',
        productRatingNumber: '550'
    ),
    Product(
        productImage: AppImage.productImage4,
        productName: 'Bata watch model xx78',
        ProductNewPrice: '450',
        productOldPrice: '1260',
        productDiscount: '82',
        productRating: '4.1',
        productRatingNumber: '910'
    ),
    Product(
        productImage: AppImage.productImage5,
        productName: 'Sara shoe model xx68',
        ProductNewPrice: '350',
        productOldPrice: '1960',
        productDiscount: '35',
        productRating: '3.5',
        productRatingNumber: '550'
    ),
    Product(
        productImage: AppImage.productImage6,
        productName: 'Zara shoe model xx98',
        ProductNewPrice: '450',
        productOldPrice: '1960',
        productDiscount: '35',
        productRating: '3.5',
        productRatingNumber: '550'
    ),
    Product(
        productImage: AppImage.productImage7,
        productName: 'Sara dress model xx78',
        ProductNewPrice: '950',
        productOldPrice: '1860',
        productDiscount: '65',
        productRating: '4.5',
        productRatingNumber: '850'
    ),
    Product(
        productImage: AppImage.productImage8,
        productName: 'Zara dress model xx78',
        ProductNewPrice: '950',
        productOldPrice: '1860',
        productDiscount: '65',
        productRating: '4.5',
        productRatingNumber: '850'
    ),
    Product(
        productImage: AppImage.productImage9,
        productName: 'Hujaifa Mens model xx78',
        ProductNewPrice: '950',
        productOldPrice: '1860',
        productDiscount: '65',
        productRating: '4.5',
        productRatingNumber: '850'
    ),
    Product(
        productImage: AppImage.productImage10,
        productName: 'Hannan Mens model xx78',
        ProductNewPrice: '950',
        productOldPrice: '1860',
        productDiscount: '65',
        productRating: '4.5',
        productRatingNumber: '850'
    ),
    Product(
        productImage: AppImage.productImage11,
        productName: 'Kids dress model xx78',
        ProductNewPrice: '950',
        productOldPrice: '1860',
        productDiscount: '65',
        productRating: '4.5',
        productRatingNumber: '850'
    ),
    Product(
        productImage: AppImage.productImage12,
        productName: 'Kids dress model xx78',
        ProductNewPrice: '950',
        productOldPrice: '1860',
        productDiscount: '65',
        productRating: '4.5',
        productRatingNumber: '850'
    ),
    Product(
        productImage: AppImage.productImage13,
        productName: 'Mobile model xx78',
        ProductNewPrice: '950',
        productOldPrice: '1860',
        productDiscount: '65',
        productRating: '4.5',
        productRatingNumber: '850'
    ),
    Product(
        productImage: AppImage.productImage14,
        productName: 'Mobile model xx78',
        ProductNewPrice: '950',
        productOldPrice: '1860',
        productDiscount: '65',
        productRating: '4.5',
        productRatingNumber: '850'
    )
  ];

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

              // Cart & Buy Button
              Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 140,
                    child: Stack(
                      alignment: AlignmentGeometry.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 25.0, right: 10.0, top: 5.0, bottom: 5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
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
                          left: 0,
                          bottom: 7,
                          child: CircleAvatar(
                            radius: 18.0,
                            backgroundColor: Color(0xff0B3689),
                            child: Icon(Symbols.shopping_cart, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(15.0),

                  SizedBox(
                    height: 50,
                    width: 140,
                    child: Stack(
                      alignment: AlignmentGeometry.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 25.0, right: 10.0, top: 5.0, bottom: 5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              gradient: LinearGradient(colors: [
                                Color(0xff71F9A9),
                                Color(0xff31B769),
                              ])
                          ),
                          child: Text('Buy Now',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),

                        Positioned(
                          left: 1,
                          bottom: 7,
                          child: CircleAvatar(
                            radius: 18.0,
                            backgroundColor: Color(0xff31B769),
                            child: Icon(Symbols.shopping_cart, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(10.0),

              // Card
              Container(
                height: 60.0,
                width: MediaQuery.sizeOf(context).width,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Color(0xffFFCCD5),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Delivery in',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                      ),
                    ),
                    Text('1 within Hour',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                  ],
                ),
              ),
              Gap(10.0),

              // View & Compare button
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.visibility),
                          Gap(10.0),

                          Text('View Similar',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Gap(10.0),

                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.compare),
                          Gap(10.0),

                          Text('Add to Compare',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Gap(10.0),

              // Similar || sort || filter
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Text('Similar To',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500
                        ),
                      ),

                      Text('282+ Items',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5.0))
                        ),
                        child: Row(
                          children: [
                            Text('Sort',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            Gap(5.0),
                            Icon(Symbols.swap_vert, size: 15)
                          ],
                        ),
                      ),
                      Gap(10.0),

                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5.0))
                        ),
                        child: Row(
                          children: [
                            Text('Filter',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            Gap(5.0),
                            Icon(Symbols.filter_alt, size: 15)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              Gap(16.0),

              // Similar Product
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: productList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final productInfo = productList[index];
                    return GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetailsScreen())),
                      child: ProductMiniCard(
                        productImage: productInfo.productImage??'',
                        productName: productInfo.productName??'',
                        productNewPrice: '\$${productInfo.ProductNewPrice}',
                        productOldPrice: '\$${productInfo.productOldPrice}',
                        productDiscount: '${productInfo.productDiscount}',
                        productRating: double.tryParse('${productInfo.productRating}'),
                        productRatingNumber: '${productInfo.productRatingNumber}',
                      ),
                    );
                  },
                ),
              ),
              Gap(30.0),

            ],
          ),
        ),
      ))
    );
  }
}
