import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:material_symbols_icons/symbols.dart';

import 'payment_screen.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {

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

          title: Text('Checkout', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
          centerTitle: true
      ),

      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                                  Text('Checked Single Breasted Blazer',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54
                                    ),
                                  ),
                                  Gap(2.5),

                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(2.5),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            color: Colors.grey.shade300
                                        ),
                                        child: Row(
                                          children: [
                                            Text('Size'),
                                            Gap(5.0),
                                            Text('42'),
                                            Gap(5.0),
                                            Icon(Icons.keyboard_arrow_down),
                                          ],
                                        ),
                                      ),
                                      Gap(5.0),

                                      Container(
                                        padding: EdgeInsets.all(2.5),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            color: Colors.grey.shade300
                                        ),
                                        child: Row(
                                          children: [
                                            Text('Qty'),
                                            Gap(5.0),
                                            Text('1'),
                                            Gap(5.0),
                                            Icon(Icons.keyboard_arrow_down),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Gap(2.5),

                                  Row(
                                    children: [
                                      Text(
                                        'Delivered by',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black38
                                        ),
                                      ),
                                      Gap(5.0),

                                      Text(
                                        '10 May 2026',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),


                    ],
                  ),
                );
              },
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Symbols.volume_up),
                    Gap(5.0),

                    Text('Apply Coupons',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                      ),
                    )
                  ],
                ),

                Text('Select',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffF83758),
                      fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
            Gap(20.0),

            Divider(
                thickness: 2.0,
                color: Color(0xffA8A8A9)
            ),
            Gap(20.0),

            Text('Order Payment Details',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500
              ),
            ),
            Gap(10.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order Amounts',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black38
                  ),
                ),

                Text('\$7000.00',
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
                Row(
                  children: [
                    Text('Convenience',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black38
                      ),
                    ),
                    Gap(10.0),

                    Text('Know More',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffF83758)
                      ),
                    ),
                  ],
                ),

                Text('Apply Coupon',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffF83758)
                  ),
                ),
              ],
            ),
            Gap(5.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('DeliveryFee',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black38
                  ),
                ),
                Gap(10.0),

                Text('Free',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffF83758)
                  ),
                ),
              ],
            ),
            Gap(10.0),

            Divider(
              thickness: 2.0,
              color: Color(0xffA8A8A9)
            ),
            Gap(10.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order Total',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black38
                  ),
                ),

                Text('\$7000.00',
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
              children: [
                Text('EMI Available',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black38
                  ),
                ),
                Gap(20.0),

                Text('Details',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffF83758)
                  ),
                ),
              ],
            )
          ],
        ),
      ),

      bottomNavigationBar: SafeArea(
          child: Container(
            height: 80,
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Text('\$7000.00',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                      Gap(10.0),

                      Text('view Details',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffF83758)
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  flex: 4,
                  child: GestureDetector(
                    onTap: ()=> Get.to(()=> PaymentScreen()),
                    child: Container(
                      height: 52,
                      width: MediaQuery.sizeOf(context).width,
                      alignment: AlignmentGeometry.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Color(0xffF83758)
                      ),
                      child: Text('Proceed to payment',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
      )),
    );
  }
}
