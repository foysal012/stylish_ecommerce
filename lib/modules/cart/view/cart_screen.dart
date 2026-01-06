import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:material_symbols_icons/symbols.dart';
import '../../../core/constants/app_image.dart';
import '../../checkout/view/select_address_screen.dart';
import '../../home/view/home_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

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
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            maxRadius: 10,
            backgroundColor: Colors.black12,
            child: Icon(Symbols.menu_open),
          ),
        ),

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('${AppImage.splashLogo}', height: 50, width: 35),
            Gap(5.0),
            Text('Stylish',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4392F9)
              ),
            )
          ],
        ),
        // centerTitle: true,

        actions: [
          CircleAvatar(
              radius: 25,
              backgroundImage:AssetImage('${AppImage.profileImage}')
          ),
          Gap(10.0)
        ],
      ),

      body: Container(
        padding: EdgeInsets.all(16.0),

        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text('Total Items',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff000000)
                ),
                 ),
                 Text('items',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38
                ),
                 ),
                ],
              ),

              // Cart product
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  reverse: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.only(bottom: 10.0),
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              ),
                            ),
                          ),
                          Gap(10.0),
          
                          Expanded(
                            flex: 5,
                            child: Container(
                              width: MediaQuery.sizeOf(context).width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Men\'s Ski jackets',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black
                                        ),
                                      ),
          
                                      Icon(Symbols.more_horiz, color: Colors.black)
                                    ],
                                  ),
                                  Gap(30.0),
          
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.all(Radius.circular(25.0))
                                        ),
                                        child: Text('\$519'),
                                      ),
          
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(5.0),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle
                                            ),
                                            child: Icon(Symbols.remove),
                                          ),
                                          Gap(5.0),
          
                                          Text('1'),
                                          Gap(5.0),
          
                                          Container(
                                            padding: EdgeInsets.all(5.0),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle
                                            ),
                                            child: Icon(Symbols.add),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
              )
            ],
          ),
        ),
      ),

      bottomNavigationBar: SafeArea(
          child: Container(
            height: 175,
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sub Total',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black38
                      ),
                    ),

                    Text('\$1229',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000000)
                      ),
                    ),
                  ],
                ),
                Gap(5.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shipping',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black38
                      ),
                    ),
                    Text('\$49',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ],
                ),
                Gap(5.0),

                Divider(
                  thickness: 2.0,
                  color: Colors.white,
                  endIndent: 10.0,
                  indent: 10.0,
                ),
                Gap(5.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Amount',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),
                    ),
                    Text('\$578',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ],
                ),
                Gap(10.0),
                
                GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectAddressScreen())),
                  child: Container(
                    height: 52,
                    width: MediaQuery.sizeOf(context).width,
                    alignment: AlignmentGeometry.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Color(0xffF83758)
                    ),
                    child: Text('Checkout',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
