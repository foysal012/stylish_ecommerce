import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:material_symbols_icons/symbols.dart';
import '../../../core/constants/app_image.dart';
import '../../../data/models/product/category_model.dart';
import '../../../data/models/product/product_model.dart';
import '../../../widgets/product/product_mini_card.dart';
import '../../product/view/product_details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final searchTextController = TextEditingController();
  CarouselSliderController buttonCarouselController = CarouselSliderController();

  List<String> bannerList = [
    AppImage.banner1,
    AppImage.banner2,
    AppImage.banner3,
    AppImage.banner4,
    AppImage.banner5,
    AppImage.banner6
  ];

  List<CategoryModel> categoryList = [
    CategoryModel(categoryImage: AppImage.beautyCategory, categoryName: 'Beauty'),
    CategoryModel(categoryImage: AppImage.fashionCategory, categoryName: 'Fashion'),
    CategoryModel(categoryImage: AppImage.kidsCategory, categoryName: 'Kids'),
    CategoryModel(categoryImage: AppImage.mensCategory, categoryName: 'Mens'),
    CategoryModel(categoryImage: AppImage.womanCategory, categoryName: 'Woman'),
    CategoryModel(categoryImage: AppImage.beautyCategory, categoryName: 'Beauty'),
    CategoryModel(categoryImage: AppImage.fashionCategory, categoryName: 'Fashion'),
    CategoryModel(categoryImage: AppImage.kidsCategory, categoryName: 'Kids'),
    CategoryModel(categoryImage: AppImage.mensCategory, categoryName: 'Mens'),
    CategoryModel(categoryImage: AppImage.womanCategory, categoryName: 'Woman'),
    CategoryModel(categoryImage: AppImage.beautyCategory, categoryName: 'Beauty'),
    CategoryModel(categoryImage: AppImage.fashionCategory, categoryName: 'Fashion'),
    CategoryModel(categoryImage: AppImage.kidsCategory, categoryName: 'Kids'),
    CategoryModel(categoryImage: AppImage.mensCategory, categoryName: 'Mens'),
    CategoryModel(categoryImage: AppImage.womanCategory, categoryName: 'Woman'),
  ];

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
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.sizeOf(context).height;
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
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
          
              // Search Text Field
              TextFormField(
                controller: searchTextController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Symbols.search, color: Color(0xffA8A8A9)),
                    hintText: 'Search any product...',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xff676767),
                        fontWeight: FontWeight.w500
                    ),
                    suffixIcon: IconButton(
                        onPressed: (){
          
                        },
                        icon: Icon(Symbols.mic)
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    // enabledBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    //     borderSide: BorderSide(
                    //         width: 2,
                    //         color: Color(0xffA8A8A9)
                    //     )
                    // ),
                    // focusedBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    //     borderSide: BorderSide(
                    //         width: 2,
                    //         color: Color(0xffA8A8A9)
                    //     )
                    // )
                    border: InputBorder.none
                ),
              ),
              Gap(16.0),
          
              // All featured || sort || filter
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('All Featured',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500
                    ),
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
          
              //Categories
              Container(
                height: 100,
                width: MediaQuery.sizeOf(context).width,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                child: ListView.builder(
                    itemCount: categoryList.length,
                    shrinkWrap: true,
                    reverse: false,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final categoryInfo = categoryList[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                                radius: 25,
                                backgroundImage:AssetImage('${categoryInfo.categoryImage}')
                            ),
                            Gap(5.0),
                            Text('${categoryInfo.categoryName}')
                          ],
                        ),
                      );
                    },
                ),
              ),
              Gap(24.0),
          
              // Carocel Slider
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  // onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
                items: bannerList.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              // color: Colors.purple[200]
                            // image: DecorationImage(image: AssetImage(i))
                          ),
                          child:Image.asset(i, fit: BoxFit.cover)
                      );
                    },
                  );
                }).toList(),
              ),
              Gap(16.0),
          
              // Offer Card
              Container(
                width: width,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Color(0xff4392F9),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Deal of the Day',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Symbols.alarm, size: 15.0, color: Colors.white),
                            Gap(5.0),
          
                            Text('22h 55m 20s remaining',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
          
                    Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        border: Border.all(width: 1.0, color: Colors.white)
                      ),
                      child: Row(
                        children: [
                          Text('View all',
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),
                          ),
                          Gap(5.0),
          
                          Icon(Symbols.arrow_right_alt, size: 20, color: Colors.white),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Gap(16.0),
          
              // Offer Product
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: productList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final productInfo = productList[index];
                    return GestureDetector(
                      onTap: () =>  Get.to(()=> ProductDetailsScreen()),
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
              Gap(16.0),
          
              // Offer Card 2
              Container(
                width: width,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    Image.asset('${AppImage.offerLogo}'),
                    Gap(25.0),
          
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Special Offers',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(2.5),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 1.0,
                                  color: Color(0xff000000).withValues(alpha:0.15)
                                ),
                              ),
                              child: Text('😂'),
                            )
                          ],
                        ),
                        Text('We make sure you get the\noffer you need at best prices',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black38
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Gap(16.0),
          
              // Offer banner
              Image.asset('${AppImage.offerBanner}', fit: BoxFit.cover, width: width),
              Gap(16.0),

              // Offer Card 3
              Container(
                width: width,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Color(0xffFD6E87),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Trending Products',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Symbols.calendar_meal_rounded, size: 15.0, color: Colors.white),
                            Gap(5.0),

                            Text('Last Date 29/02/2025',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          border: Border.all(width: 1.0, color: Colors.white)
                      ),
                      child: Row(
                        children: [
                          Text('View all',
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),
                          ),
                          Gap(5.0),

                          Icon(Symbols.arrow_right_alt, size: 20, color: Colors.white),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Gap(16.0),

              // Offer Product 2
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: productList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final productInfo = productList[index];
                    return GestureDetector(
                      onTap: () => Get.to(() => ProductDetailsScreen()),
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
              Gap(16.0),
              // Offer banner 2
              Image.asset('${AppImage.offerBanner2}', fit: BoxFit.cover, width: width),
              Gap(16.0),

              // Offer banner 3
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sponserd',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                      ),
                    ),
                    Gap(12.0),
                    
                    Image.asset('${AppImage.offerBanner3}', fit: BoxFit.cover, width: width),
                    Gap(12.0),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('up to 50% off',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                        Icon(Symbols.keyboard_arrow_right)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}