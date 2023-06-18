import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:e_commerce_app/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:e_commerce_app/components/widgets.dart';

class SearchResult extends StatefulWidget {
  final String query;
  const SearchResult({super.key, required this.query});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  TextEditingController _editingController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _editingController.text = widget.query;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String query = widget.query;

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroudColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                        onSubmitted: (value) {},
                      ),
                    ),
                    filterButtonWidget(),
                  ],
                ),
              ),
              Text(
                "Result for recent search \" $query \"",
                style: productName,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Wrap(
                    children: [
                      productCardWidget("assets/res/image.png",
                          "Long Sleeve Shirts", 300, context),
                      productCardWidget("assets/res/image.png",
                          "Short Sleeve Shirts", 200, context),
                      productCardWidget("assets/res/image.png",
                          "Short Sleeve Shirts", 100, context),
                      productCardWidget("assets/res/image.png",
                          "Red half Tshirts", 300, context),
                      productCardWidget("assets/res/image.png",
                          "Red half Tshirts", 300, context),
                      productCardWidget("assets/res/image.png",
                          "Red half Tshirts", 300, context),
                      productCardWidget("assets/res/image.png",
                          "Red half Tshirts", 300, context),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
}
