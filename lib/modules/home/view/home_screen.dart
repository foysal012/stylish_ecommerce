import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:stylish_ecommerce/core/constants/app_image.dart';

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

  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: Color(0xffF2F2F2),
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
                        width: MediaQuery.of(context).size.width,
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

          ],
        ),
      ),
    );
  }
}

class CategoryModel{
  String categoryImage;
  String categoryName;
  
  CategoryModel({
    required this.categoryImage, 
    required this.categoryName
  });
}