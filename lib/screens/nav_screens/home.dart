import 'package:e_commerce_app/components/widgets.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:e_commerce_app/theme/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
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
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notes_rounded,
                      size: 30,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.pin_drop),
                      Text(
                        "15/35 Street Texas",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.notifications,
                    size: 30,
                    color: Colors.grey,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
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
              SizedBox(
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
                margin: EdgeInsets.only(
                  top: 35,
                  bottom: 35,
                ),
                padding: EdgeInsets.symmetric(
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
                        decoration: InputDecoration(
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
                    ProductCardWidget(
                        "assets/res/image.png", "Long Sleeve Shirts", 300),
                    ProductCardWidget(
                        "assets/res/image.png", "Short Sleeve Shirts", 200),
                    ProductCardWidget(
                        "assets/res/image.png", "Loose Jeans", 100),
                    ProductCardWidget(
                        "assets/res/image.png", "Red half Tshirts", 300),
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

    SfRangeValues _rangeValues = SfRangeValues(0, 500);

    return InkWell(
      onTap: () {
        showModalBottomSheet(
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
                            icon: Icon(
                              Icons.close,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
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
                          margin: EdgeInsets.symmetric(vertical: 10.0),
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
                        Text(
                          "Pricing",
                          style: appBarTitle,
                        ),
                        SfRangeSlider(
                          showLabels: false,
                          values: _rangeValues,
                          onChanged: (value) {
                            setState(() {
                              _rangeValues = value;
                            });
                          },
                          min: 0.0,
                          max: 1000,
                          activeColor: primaryColor,
                          inactiveColor: Colors.grey[300],
                        ),
                      ],
                    ),
                  );
                }),
              );
            });
      },
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
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
