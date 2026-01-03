import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:material_symbols_icons/symbols.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: AppBar(
          backgroundColor: Color(0xffF2F2F2),
          leadingWidth: 40,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
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

          title: Text('Payment', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
          centerTitle: true
      ),

      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order',
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
                Text('Shipping',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black38
                  ),
                ),

                Text('\$30.00',
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
                Text('Total',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black38
                  ),
                ),

                Text('\$730.00',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff000000)
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

            Text('Payment',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500
              ),
            ),
            Gap(10.0),

            SizedBox(
              height: 250,
              child: ListView.builder(
                reverse: false,
                itemCount: 5,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.only(bottom: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      border: index == 0? Border.all(
                        color: Color(0xffF83758),
                        width: 2
                      ):null,
                      color: Colors.black26
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Visa'),
                        Text('**********998877'),
                      ],
                    ),
                  );
              },),
            )
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
          child: GestureDetector(
            // onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => CheckoutScreen())),
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
                child: Text('Continue',
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
