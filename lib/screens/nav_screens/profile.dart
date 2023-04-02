import 'package:e_commerce_app/theme/colors.dart';
import 'package:e_commerce_app/theme/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          ClipPath(
            clipper: ProsteBezierCurve(
              position: ClipPosition.bottom,
              list: [
                BezierCurveSection(
                  start: Offset(0, 145),
                  top: Offset(MediaQuery.of(context).size.width / 4, 170),
                  end: Offset(MediaQuery.of(context).size.width / 2, 150),
                ),
                BezierCurveSection(
                  start: Offset(MediaQuery.of(context).size.width / 2, 155),
                  top: Offset(MediaQuery.of(context).size.width / 4 * 3, 130),
                  end: Offset(MediaQuery.of(context).size.width, 170),
                ),
              ],
            ),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    primaryColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                elevation: 0.0,
                backgroundColor: Colors.transparent,
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
                  "Profile",
                  style: appBarTitle,
                ),
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: CircleAvatar(
                            backgroundColor: primaryColor,
                            radius: MediaQuery.of(context).size.height * .08,
                            foregroundImage: AssetImage(
                              "assets/res/avatar.png",
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Shubham Pednekar",
                        style: appBarTitle,
                      ),
                      Text(
                        "example@example.com",
                        style: seeAllText,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: SingleChildScrollView(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              statsCard(
                                "assets/res/progress_icon.svg",
                                "Progress Order",
                                "45.5K",
                              ),
                              statsCard(
                                "assets/res/promocodes.svg",
                                "Promocodes",
                                "4",
                              ),
                              statsCard(
                                "assets/res/reviews_icon.svg",
                                "Reviews",
                                "4.5K",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 15.0,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 15.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Personal Information",
                              style: appBarTitle,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 15.0,
                        ),
                        color: Colors.grey[200],
                        width: MediaQuery.of(context).size.width,
                        height: 2.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          rowValue(
                            "Name",
                            "Chris Brown",
                          ),
                          rowValue(
                            "Email",
                            "chris@gmial.com",
                          ),
                          rowValue(
                            "Location",
                            "San Diego",
                          ),
                          rowValue(
                            "ZipCode",
                            "1200",
                          ),
                          rowValue(
                            "Phone Number",
                            "986526489",
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget statsCard(String asset, String title, String number) {
  return Card(
    shadowColor: Colors.grey[350],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
    ),
    child: Container(
      height: 155,
      width: 115,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            asset,
            fit: BoxFit.fitWidth,
            width: 45,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: primaryGrey,
            ),
          ),
          Text(
            "$number",
            style: productPrice,
          ),
        ],
      ),
    ),
  );
}

Widget rowValue(String title, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 8.0,
      horizontal: 15.0,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$title : ",
          style: seeAllText,
        ),
        Text(
          value,
          style: inActiveFilterTabText,
        ),
      ],
    ),
  );
}
