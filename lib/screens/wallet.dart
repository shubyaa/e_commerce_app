import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/theme/styles.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyWalletScreen extends StatefulWidget {
  const MyWalletScreen({super.key});

  @override
  State<MyWalletScreen> createState() => _MyWalletScreenState();
}

class _MyWalletScreenState extends State<MyWalletScreen> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    List<Widget> cards = List.generate(3, (index) {
      return CardWidget(context, "Shubham Pednekar", 8451841565, "20/24");
    });
    return SafeArea(
      child: Scaffold(
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
                Icons.more_vert_rounded,
                color: Colors.black,
              ),
            ),
          ],
          centerTitle: true,
          title: Text(
            "My Wallet",
            style: appBarTitle,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                controller: controller,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: cards,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SmoothPageIndicator(
                  count: cards.length,
                  onDotClicked: (index) {
                    controller.animateToPage(
                      index,
                      duration: Duration(
                        milliseconds: 100,
                      ),
                      curve: Curves.ease,
                    );
                  },
                  effect: WormEffect(
                    dotColor: Color.fromARGB(255, 211, 211, 211),
                    activeDotColor: primaryColor,
                    dotWidth: 10.0,
                    dotHeight: 10.0,
                  ),
                  controller: controller,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 10.0,
                ),
                child: Row(
                  children: [
                    Text(
                      "Recent Transactions",
                      style: appBarTitle,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  WalletListCard("assets/res/image.png", "Loose T-shirts",
                      "23rd March 2021", 550),
                  WalletListCard("assets/res/image.png", "Loose T-shirts",
                      "23rd March 2021", 550),
                  WalletListCard("assets/res/image.png", "Loose T-shirts",
                      "23rd March 2021", 550),
                  WalletListCard("assets/res/image.png", "Loose T-shirts",
                      "23rd March 2021", 550),
                  WalletListCard("assets/res/image.png", "Loose T-shirts",
                      "23rd March 2021", 550),
                  WalletListCard("assets/res/image.png", "Loose T-shirts",
                      "23rd March 2021", 550),
                  WalletListCard("assets/res/image.png", "Loose T-shirts",
                      "23rd March 2021", 550),
                  WalletListCard("assets/res/image.png", "Loose T-shirts",
                      "23rd March 2021", 550),
                  WalletListCard("assets/res/image.png", "Loose T-shirts",
                      "23rd March 2021", 550),
                  WalletListCard("assets/res/image.png", "Loose T-shirts",
                      "23rd March 2021", 550),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Card WalletListCard(asset, name, time, price) {
    return Card(
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Image.asset(
                    asset,
                    fit: BoxFit.fitHeight,
                    height: 60,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      name,
                      style: walletCardText,
                    ),
                    Text(
                      time,
                      style: seeAllText,
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "\$$price",
              style: walletCardPrice,
            ),
          ],
        ),
      ),
    );
  }
}

Widget CardWidget(context, name, number, valid_thru) {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: 5.0,
      vertical: 8.0,
    ),
    padding: EdgeInsets.all(25.0),
    width: MediaQuery.of(context).size.width * .9,
    height: MediaQuery.of(context).size.height * .25,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      gradient: LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: [
          primaryColor,
          Color.fromRGBO(247, 127, 12, .5),
        ],
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              "Platinum Card",
              style: cardTextStyleLight,
            ),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset(
              "assets/res/chip.svg",
              fit: BoxFit.fitWidth,
              width: 40,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$number",
                  style: cardTextStyleBold,
                ),
                Text(
                  "Valid thru: $valid_thru",
                  style: cardTextStyleBold,
                ),
              ],
            ),
            Expanded(
              child: Text(
                name,
                textAlign: TextAlign.end,
                maxLines: 2,
                style: cardTextStyleBold,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
