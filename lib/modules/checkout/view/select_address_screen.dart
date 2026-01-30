import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:material_symbols_icons/symbols.dart';
import '../../address/view/address_screen.dart';
import 'checkout_screen.dart';

class SelectAddressScreen extends StatefulWidget {
  const SelectAddressScreen({super.key});

  @override
  State<SelectAddressScreen> createState() => _SelectAddressScreenState();
}

class _SelectAddressScreenState extends State<SelectAddressScreen> {

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.sizeOf(context).height;
    // final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: AppBar(
          backgroundColor: Color(0xffF2F2F2),
          leadingWidth: 40,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: Padding(
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
          ),

          title: Text('Select Address', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
          centerTitle: true
      ),

      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Symbols.distance),
                Gap(5.0),

                Text('Personal Details',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
            Gap(10.0),

            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Address:',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Icon(Symbols.edit)
                              ],
                            ),

                            Text('216 St Pauls Rd, London, Nt 2LL, UK\nContract: +44-784232',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500
                              ),
                            )
                          ],
                        ),
                      )
                  ),

                  Expanded(
                      flex: 1,
                      child: GestureDetector(
                          onTap: () => Get.to(() => AddressScreen()),
                          child: Icon(Symbols.control_point_duplicate))
                  ),
                ],
              ),
            ),
            Gap(10.0),

            Text('Shopping List',
                style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)
            ),
            Gap(5.0),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              reverse: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.only(bottom: 10.0),
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Column(
                    children: [
                      Row(
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
                                  Text('Women\'s Causal Wear',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),
                                  ),
                                  Gap(2.5),

                                  Row(
                                    children: [
                                      Text('Variations: ',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(2.5),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            width: 2.0,
                                            color: Colors.grey.shade300
                                          )
                                        ),
                                        child: Text('Black'),
                                      )
                                    ],
                                  ),
                                  Gap(2.5),

                                  Row(
                                    children: [
                                      Text('4.8',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black
                                        ),
                                      ),
                                      Gap(5.0),

                                      StarRating(
                                        size: 20.0,
                                        rating: 4.8,
                                        color: Colors.orange,
                                        borderColor: Colors.grey,
                                        allowHalfRating: true,
                                        // starCount: starCount,
                                        // onRatingChanged: (rating) => setState(() {
                                        //   this.rating = rating;
                                        // }),
                                      )
                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color: Colors.grey.shade300,
                                            )
                                        ),
                                        child: Text('\$59'),
                                      ),

                                      Column(
                                        children: [
                                          Text(
                                            '60% off',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xffFE735C)
                                            ),
                                          ),
                                          Gap(5.0),

                                          Text(
                                            '\$99',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black26,
                                                decoration: TextDecoration.lineThrough
                                            ),
                                          )
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
                      Gap(5.0),

                      Divider(
                          thickness: 2.0,
                          color: Color(0xffA8A8A9)
                      ),
                      Gap(10.0),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Order (1) :',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),
                          ),
                          Text('\$45.00',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            )

          ],
        ),
      ),

      bottomNavigationBar: SafeArea(
          child: GestureDetector(
            onTap: ()=> Get.to(() => CheckoutScreen()),
            child: Container(
              height: 62,
              padding: EdgeInsets.all(10.0),
              child: Container(
                height: 52,
                width: MediaQuery.sizeOf(context).width,
                alignment: AlignmentGeometry.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Color(0xffF83758)
                ),
                child: Text('Proceed to checkout',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          )
      ),
    );
  }
}
