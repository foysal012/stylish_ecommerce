import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:material_symbols_icons/symbols.dart';
import '../../../core/constants/app_image.dart';
import '../../home/view/home_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  final searchTextController = TextEditingController();

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

        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [

            // Search Text Field
            SliverToBoxAdapter(
              child: TextFormField(
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
            ),
            SliverToBoxAdapter(child: Gap(16.0)),

            // All featured || sort || filter
            SliverToBoxAdapter(
              child: Row(
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
            ),
            SliverToBoxAdapter(child: Gap(16.0)),

            // Offer Product
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  final productInfo = productList[index];
                  return Align(
                    alignment: AlignmentGeometry.center,
                    child: ProductMiniCard(
                      productImage: productInfo.productImage ?? '',
                      productName: productInfo.productName ?? '',
                      productNewPrice: '\$${productInfo.ProductNewPrice}',
                      productOldPrice: '\$${productInfo.productOldPrice}',
                      productDiscount: '${productInfo.productDiscount}',
                      productRating: double.tryParse('${productInfo.productRating}'),
                      productRatingNumber: '${productInfo.productRatingNumber}',
                    ),
                  );
                },
                childCount: productList.length,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.95,
              ),
            ),
            SliverToBoxAdapter(child: Gap(50.0)),
          ],
        ),
      ),
    );
  }
}
