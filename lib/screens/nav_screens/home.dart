import 'package:e_commerce_app/components/widgets.dart';
import 'package:e_commerce_app/screens/drawer_screens/settings.dart';
import 'package:e_commerce_app/screens/SearchResult.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:e_commerce_app/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _editingController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawerEnableOpenDragGesture: true,
        drawerEnableOpenDragGesture: true,
        backgroundColor: backgroudColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                    icon: const Icon(
                      Icons.notes_rounded,
                      size: 30,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.pin_drop),
                      Text(
                        "15/35 Street Texas",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.notifications,
                    size: 30,
                    color: Colors.grey,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 30,
                ),
                child: Text(
                  "Explore",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.openSans(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Best outfits for you",
                textAlign: TextAlign.start,
                style: GoogleFonts.openSans(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 35,
                  bottom: 35,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .7,
                      child: TextField(
                        controller: _editingController,
                        showCursor: false,
                        decoration: const InputDecoration(
                          hintText: "Search Items",
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            color: searchTextColor,
                            size: 20,
                          ),
                          focusedBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          border: InputBorder.none,
                        ),
                        style: GoogleFonts.openSans(
                          fontSize: 15,
                          color: searchTextColor,
                        ),
                        onSubmitted: (value) {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SearchResult(
                              query: _editingController.text,
                            ),
                          ));
                        },
                      ),
                    ),
                    filterButtonWidget(),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  categoryCardWidget(
                      "assets/dress_categories/dress.png", "dress"),
                  categoryCardWidget(
                      "assets/dress_categories/shirt.png", "shirt"),
                  categoryCardWidget(
                      "assets/dress_categories/pants.png", "pants"),
                  categoryCardWidget(
                      "assets/dress_categories/tshirt.png", "t-shirt"),
                ],
              ),
              sectionHead(
                "New Arrival",
                () {},
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    productCardWidget("assets/res/image.png",
                        "Long Sleeve Shirts", 300, context),
                    productCardWidget("assets/res/image.png",
                        "Short Sleeve Shirts", 200, context),
                    productCardWidget(
                        "assets/res/image.png", "Loose Jeans", 100, context),
                    productCardWidget("assets/res/image.png",
                        "Red half Tshirts", 300, context),
                  ],
                ),
              ),
            ],
          ),
        ),
        drawer: drawer(),
      ),
    );
  }

  Widget drawer() {
    return SafeArea(
      child: Container(
        color: Colors.white,
        width: 250.0,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            DrawerHeader(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage("assets/res/drawer.png"),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text(
                      "Alex Nikiforov",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text(
                      "Fashion Designer",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(
                      width: 3.0,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.favorite_rounded,
                      color: Color.fromRGBO(246, 121, 82, 1),
                    ),
                    title: const Text(
                      "My Favorites",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.account_balance_wallet,
                      color: Color.fromRGBO(246, 121, 82, 1),
                    ),
                    title: const Text(
                      "Wallets",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.shopping_bag,
                      color: Color.fromRGBO(246, 121, 82, 1),
                    ),
                    title: const Text(
                      "My Orders",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.book,
                      color: Color.fromRGBO(246, 121, 82, 1),
                    ),
                    title: const Text(
                      "About Us",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.lock,
                      color: Color.fromRGBO(246, 121, 82, 1),
                    ),
                    title: const Text(
                      "Privacy Policy",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SettingPage()));
                    },
                    leading: const Icon(
                      Icons.settings,
                      color: Color.fromRGBO(246, 121, 82, 1),
                    ),
                    title: const Text(
                      "Settings",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.logout_outlined,
                      color: Color.fromRGBO(246, 121, 82, 1),
                    ),
                    title: const Text(
                      "Logout",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: SvgPicture.asset(
                      'assets/res/Vector.svg',
                      height: 60.0,
                      width: 52.0,
                      alignment: Alignment.bottomLeft,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  InkWell filterButtonWidget() {
    SfRangeValues rangeValues = const SfRangeValues(0.0, 500.0);
    SfRangeValues rangeValuesForDistance = const SfRangeValues(15.0, 50.0);
    double startValue = rangeValues.start;
    double endValue = rangeValues.end;

    double startValueDistance = rangeValues.start;
    double endValueDistance = rangeValues.end;

    return InkWell(
      onTap: () {
        showModalBottomSheet(
            useSafeArea: true,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            )),
            context: context,
            builder: (context) {
              return StatefulBuilder(
                builder: ((context, setState) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      top: 10.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Clear",
                              style: GoogleFonts.openSans(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: primaryGrey,
                              ),
                            ),
                          ),
                          title: Text(
                            "Filters",
                            textAlign: TextAlign.center,
                            style: appBarTitle,
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.close,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 8.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 1.0,
                        ),
                        Text(
                          "Category",
                          style: appBarTitle,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10.0),
                          child: ToggleSwitch(
                            animate: true,
                            animationDuration: 200,
                            minWidth: MediaQuery.of(context).size.width,
                            activeBgColor: const [primaryColor],
                            activeFgColor: Colors.white,
                            inactiveBgColor: Colors.transparent,
                            inactiveFgColor: Colors.black,
                            labels: const [
                              'New Arrival',
                              'Top-Branding',
                              'Featured'
                            ],
                            onToggle: (index) {},
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Pricing",
                              style: appBarTitle,
                            ),
                            Text(
                              "₹ ${startValue.round()} - ₹ ${endValue.round()}",
                              style: productPrice,
                            ),
                          ],
                        ),
                        SfRangeSlider(
                          showLabels: false,
                          values: rangeValues,
                          onChanged: (value) {
                            setState(() {
                              rangeValues = value;
                              startValue = value.start;
                              endValue = value.end;
                            });
                          },
                          min: 0.0,
                          max: 1000,
                          activeColor: primaryColor,
                          inactiveColor: Colors.grey[300],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Distance",
                              style: appBarTitle,
                            ),
                            Text(
                              "${startValueDistance.round()} km - ${endValueDistance.round()} km",
                              style: productPrice,
                            ),
                          ],
                        ),
                        SfRangeSlider(
                          showLabels: false,
                          values: rangeValuesForDistance,
                          onChanged: (value) {
                            setState(() {
                              rangeValuesForDistance = value;
                              startValueDistance = value.start;
                              endValueDistance = value.end;
                            });
                          },
                          min: 0.0,
                          max: 100,
                          activeColor: primaryColor,
                          inactiveColor: Colors.grey[300],
                        ),
                        Center(
                          child: ElevatedButton(
                            style: redButtonStyle,
                            onPressed: () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 100,
                                vertical: 15.0,
                              ),
                              child: Text("Apply Filter", style: redButtonText),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                      ],
                    ),
                  );
                }),
              );
            });
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.tune,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }

  MaterialStateProperty<Color> getColor(Color white, Color primaryColor) {
    getColor(Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return primaryColor;
      } else {
        return white;
      }
    }

    return MaterialStateProperty.resolveWith(getColor);
  }
}
