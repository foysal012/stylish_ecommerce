import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:gap/gap.dart';

class ProductMiniCard extends StatelessWidget {
  const ProductMiniCard({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productNewPrice,
    this.productOldPrice,
    this.productDiscount,
    this.productRating,
    this.productRatingNumber
  });

  final String productImage;
  final String productName;
  final String productNewPrice;
  final String? productOldPrice;
  final String? productDiscount;
  final double? productRating;
  final String? productRatingNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 16.0),
      width: 148,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        // color: Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 104,
              width: 142,
              decoration: BoxDecoration(
                // image: DecorationImage(image: AssetImage('${AppImage.kidsCategory}')),
                image: DecorationImage(image: AssetImage('${productImage}'), fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0)
                )
              ),
            ),
          ),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  // 'IWC Schaffhausen 2021 Pilot\'s Watch "SIHH 2019" 44mm',
                  '$productName',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  // '\$650',
                  '\$$productNewPrice',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),
                ),
                Row(
                  children: [
                    Text(
                      // '\$1599',
                      '\$$productOldPrice',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black26,
                          decoration: TextDecoration.lineThrough
                      ),
                    ),
                    Gap(10.0),

                    Text(
                      // '60% off',
                      '$productDiscount% off',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFE735C)
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    StarRating(
                      size: 20.0,
                      rating: productRating??0.0,
                      color: Colors.orange,
                      borderColor: Colors.grey,
                      allowHalfRating: true,
                      // starCount: starCount,
                      // onRatingChanged: (rating) => setState(() {
                      //   this.rating = rating;
                      // }),
                    ),
                    Text('($productRatingNumber)',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}