import 'package:e_commerce_app/theme/colors.dart';
import 'package:e_commerce_app/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Card CategoryCardWidget(String imageAsset, String text) {
  return Card(
    elevation: 0.0,
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: primaryGrey,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    margin: EdgeInsets.symmetric(
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

Container ProductCardWidget(String assetImage, String title, int rate) {
  return Container(
    width: 180,
    padding: EdgeInsets.all(8.0),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
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
  );
}
