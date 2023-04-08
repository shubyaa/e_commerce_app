import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce_app/theme/colors.dart';
import 'package:e_commerce_app/theme/styles.dart';

// import 'package:flutter/e';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundProductDetailsColor,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(
              CupertinoIcons.back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_rounded,
                color: heartColor,
              ),
            ),
          ],
        ),
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/res/image.png',
                fit: BoxFit.fitHeight,
                height: 350,
                filterQuality: FilterQuality.high,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * .4,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              height: MediaQuery.of(context).size.height * .35,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Loose Shirts",
                          style: appBarTitle,
                        ),
                        Text(
                          "₹ 200",
                          style: appBarTitle,
                        ),
                      ],
                    ),
                    Text(
                      "This is a description text for all because Abhijeet chutiya hai !!!",
                      style: descriptionLight,
                    ),
                    Text(
                      "Colors",
                      style: descriptionLight,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.blue[100],
                            radius: 8.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.red[100],
                            radius: 8.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.purple[200],
                            radius: 8.0,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: ElevatedButton(
                          style: redButtonStyle,
                          onPressed: () {
                            const toast = SnackBar(
                              elevation: .5,
                              content: Text("A Snackbar"),
                              backgroundColor: primaryColor,
                            );
                            ScaffoldMessenger.of(context).showSnackBar(toast);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 100,
                              vertical: 15.0,
                            ),
                            child: Text("Add to Cart", style: redButtonText),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
