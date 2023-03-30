import 'package:e_commerce_app/screens/MyCart.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:e_commerce_app/theme/styles.dart';
import 'package:e_commerce_app/screens/Increment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Card CategoryCardWidget(String imageAsset, String text) {
  return Card(
    elevation: 0.0,
    shape: RoundedRectangleBorder(
      side: const BorderSide(
        color: primaryGrey,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    margin: const EdgeInsets.symmetric(
      horizontal: 10,
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(
            imageAsset,
            width: 55,
          ),
          Text(
            text,
            style: productPrice,
          ),
        ],
      ),
    ),
  );
}

Widget sectionHead(String title, Function seeAll) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 20,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: sectionHeadText,
        ),
        TextButton(
          onPressed: seeAll(),
          child: Text(
            'See All',
            style: seeAllText,
          ),
        ),
      ],
    ),
  );
}

Widget ProductCardWidget(
    String assetImage, String title, int rate, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.of(context, rootNavigator: true)
          .push(MaterialPageRoute(builder: (context) => MyCart()));
    },
    child: Container(
      width: 180,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: productBackgroundColor,
            ),
            child: Image.asset(
              assetImage,
              fit: BoxFit.fitHeight,
              height: 133,
              width: 180,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  overflow: TextOverflow.visible,
                  maxLines: 2,
                  style: productName,
                ),
              ),
              Text(
                "₹. $rate",
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}

Widget productListCard() {
  return Card(
    elevation: 0.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  right: 10,
                ),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: productBackgroundColor,
                ),
                padding: EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/res/image.png",
                  fit: BoxFit.contain,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Loose Shirt",
                    style: greyTextProuct,
                  ),
                  Text(
                    "₹ 250",
                    style: productPrice,
                  ),
                ],
              ),
            ],
          ),
          Increment(
            count: 10,
          ),
        ],
      ),
    ),
  );
}
