import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:e_commerce_app/theme/colors.dart';
import 'package:e_commerce_app/theme/styles.dart';

import 'package:google_fonts/google_fonts.dart';

// import 'package:flutter/e';

class productDetails extends StatefulWidget {
  const productDetails({super.key});

  @override
  State<productDetails> createState() => _productDetailsState();
}

class _productDetailsState extends State<productDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundProductDetailsColor,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
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
              icon: Icon(
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
              decoration: BoxDecoration(
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
                            padding: EdgeInsets.symmetric(
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
