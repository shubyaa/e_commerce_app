import 'package:e_commerce_app/screens/static_screens/CompletedPage.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:e_commerce_app/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_commerce_app/screens/favoriteButton.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            "Favourite",
            style: appBarTitle,
          ),
          centerTitle: true,
        ),
        body: Container(
          // alignment: Alignment.topLeft,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 35.0),
          child: SingleChildScrollView(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              runSpacing: 5.0,
              spacing: 12.0,
              children: [
                wrapProductListCard("assets/res/image.png",
                    "Long Sleeve Shirts", 300, context, true),
                wrapProductListCard("assets/res/image.png",
                    "Long Sleeve Shirts", 300, context, true),
                wrapProductListCard("assets/res/image.png",
                    "Long Sleeve Shirts", 300, context, true),
                wrapProductListCard("assets/res/image.png",
                    "Long Sleeve Shirts", 300, context, true),
                wrapProductListCard("assets/res/image.png",
                    "Long Sleeve Shirts", 300, context, true),
                wrapProductListCard("assets/res/image.png",
                    "Long Sleeve Shirts", 300, context, true),
                wrapProductListCard("assets/res/image.png",
                    "Long Sleeve Shirts", 300, context, true),
                wrapProductListCard("assets/res/image.png",
                    "Long Sleeve Shirts", 300, context, true),
                wrapProductListCard("assets/res/image.png",
                    "Long Sleeve Shirts", 300, context, true),
                wrapProductListCard("assets/res/image.png",
                    "Long Sleeve Shirts", 300, context, true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget wrapProductListCard(String assetImage, String title, int rate,
    BuildContext context, bool isFav) {
  bool isSelected = isFav;
  return InkWell(
    onTap: () {
      // Navigator.of(context, rootNavigator: true)
      //     .push(MaterialPageRoute(builder: (context) => CompletedPage()));
    },
    child: Container(
      width: MediaQuery.of(context).size.width * .4,
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Column(
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
                  Container(
                    width: MediaQuery.of(context).size.width * .25,
                    child: Text(
                      title,
                      overflow: TextOverflow.visible,
                      maxLines: 3,
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
          // IconButton(
          //   isSelected: isSelected,
          //   onPressed: () {
          //     if (isSelected) {
          //       print("Yes");
          //       isSelected = false;
          //     } else {
          //       isSelected = true;
          //     }
          //   },
          //   icon: Icon(
          //     isSelected
          //         ? Icons.favorite_rounded
          //         : Icons.favorite_border_rounded,
          //     color: heartColor,
          //   ),
          // ),
          FavouriteButton(
            isFav: false,
          ),
        ],
      ),
    ),
  );
}
