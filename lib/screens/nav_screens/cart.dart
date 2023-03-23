import 'package:e_commerce_app/theme/colors.dart';
import 'package:e_commerce_app/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> myTabs = [
      Container(
        width: MediaQuery.of(context).size.width * .4,
        child: Tab(
          text: "Completed",
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width * .4,
        child: Tab(
          text: "Cancelled",
        ),
      ),
    ];

    _tabController = TabController(vsync: this, length: myTabs.length);

    return Scaffold(
      backgroundColor: backgroudColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            "My Orders",
            style: appBarTitle,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        bottom: TabBar(
          labelStyle: GoogleFonts.openSans(
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelColor: primaryGrey,
          labelColor: primaryColor,
          controller: _tabController,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              width: 3,
              color: primaryColor,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          tabs: myTabs,
          isScrollable: true,
        ),
      ),
      body: SafeArea(
        child: TabBarView(
          controller: _tabController,
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ProductListCardWidget(
                    "assets/res/image.png",
                    "Loose Shirt",
                    300,
                    "25/10/2021",
                  ),
                  ProductListCardWidget(
                    "assets/res/image.png",
                    "Loose Shirt",
                    300,
                    "25/10/2021",
                  ),
                  ProductListCardWidget(
                    "assets/res/image.png",
                    "Loose Shirt",
                    300,
                    "25/10/2021",
                  ),
                  ProductListCardWidget(
                    "assets/res/image.png",
                    "Loose Shirt",
                    300,
                    "25/10/2021",
                  ),
                ],
                ),
            ),
            Row(),
          ],
        ),
      ),
    );
  }

  Row ProductListCardWidget(
      String assetImage, String title, int rate, String date) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5.0,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 8.0,
              ),
              height: 120,
              decoration: BoxDecoration(
                color: productBackgroundColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                assetImage,
                fit: BoxFit.fitHeight,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.openSans(
                    color: primaryGrey,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "₹. $rate",
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ],
        ),
        Text(
          date,
          style: seeAllText,
        )
      ],
    );
  }
}
