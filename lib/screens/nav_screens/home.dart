import 'dart:math';
import 'package:e_commerce_app/components/widgets.dart';
import 'package:e_commerce_app/screens/nav_screens/drawer.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Drawer()));
                    },
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
                    Container(
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
                          print(value);
                        },
                      ),
                    ),
                    FilterButtonWidget(),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CategoryCardWidget(
                      "assets/dress_categories/dress.png", "dress"),
                  CategoryCardWidget(
                      "assets/dress_categories/shirt.png", "shirt"),
                  CategoryCardWidget(
                      "assets/dress_categories/pants.png", "pants"),
                  CategoryCardWidget(
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
                    ProductCardWidget("assets/res/image.png",
                        "Long Sleeve Shirts", 300, context),
                    ProductCardWidget("assets/res/image.png",
                        "Short Sleeve Shirts", 200, context),
                    ProductCardWidget(
                        "assets/res/image.png", "Loose Jeans", 100, context),
                    ProductCardWidget("assets/res/image.png",
                        "Red half Tshirts", 300, context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InkWell FilterButtonWidget() {
    List<bool> _selections = List.generate(3, (_) => false);

    TextStyle _activeTextStyle = activeFilterTabText;
    Color _activeButtonColor = primaryColor;

    SfRangeValues _rangeValues = SfRangeValues(0.0, 500.0);
    SfRangeValues _rangeValuesForDistance = SfRangeValues(15.0, 50.0);
    double start_value = _rangeValues.start;
    double end_value = _rangeValues.end;

    double start_value_distance = _rangeValues.start;
    double end_value_distance = _rangeValues.end;

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
                            activeBgColor: [primaryColor],
                            activeFgColor: Colors.white,
                            inactiveBgColor: Colors.transparent,
                            inactiveFgColor: Colors.black,
                            labels: ['New Arrival', 'Top-Branding', 'Featured'],
                            onToggle: (index) {
                              print('switched to: $index');
                            },
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
                              "₹ ${start_value.round()} - ₹ ${end_value.round()}",
                              style: productPrice,
                            ),
                          ],
                        ),
                        SfRangeSlider(
                          showLabels: false,
                          values: _rangeValues,
                          onChanged: (value) {
                            setState(() {
                              _rangeValues = value;
                              start_value = value.start;
                              end_value = value.end;
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
                              "${start_value_distance.round()} km - ${end_value_distance.round()} km",
                              style: productPrice,
                            ),
                          ],
                        ),
                        SfRangeSlider(
                          showLabels: false,
                          values: _rangeValuesForDistance,
                          onChanged: (value) {
                            setState(() {
                              _rangeValuesForDistance = value;
                              start_value_distance = value.start;
                              end_value_distance = value.end;
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
