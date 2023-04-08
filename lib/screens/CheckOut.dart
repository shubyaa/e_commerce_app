import 'package:flutter/material.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:e_commerce_app/theme/styles.dart';

enum AddressOption { home, office }

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  static const String _title = 'Radio Button Example';
  AddressOption _site = AddressOption.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Checkout",
          textAlign: TextAlign.center,
          style: appBarTitle,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                      "Delivery Address",
                      style: appBarTitle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    addressCard(
                      "Home",
                      "8451841454",
                      "Carter Road",
                      "Mumbai",
                    ),
                    addressCard(
                      "Office",
                      "9619065372",
                      "Damni Road",
                      "Khopoli",
                    ),
                  ],
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
                      "Billing Information",
                      style: appBarTitle,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    rowValue(
                      "Delivery Fee ",
                      240,
                    ),
                    rowValue(
                      "Sub Total",
                      350,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 15.0,
                      ),
                      color: Colors.grey[200],
                      width: MediaQuery.of(context).size.width,
                      height: 1.5,
                    ),
                    rowValue(
                      "Total",
                      790,
                    ),
                  ],
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
                      "Payment Methods",
                      style: appBarTitle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container addressCard(String title, phone, road, city) {
    var title_ = title.toLowerCase();

    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[350]!,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10.0,
        ),
        child: Row(
          children: [
            Radio(
              value: _site,
              groupValue: _site,
              onChanged: (value) {
                setState(() {
                  _site = value!;
                });
              },
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$title",
                  style: productPrice,
                ),
                Text(
                  "$phone",
                  style: seeAllText,
                ),
                Text(
                  "$road, $city",
                  style: seeAllText,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget rowValue(String title, int value) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 8.0,
      horizontal: 15.0,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$title \t: ",
          style: greyText,
        ),
        Text(
          "\$ $value",
          style: productPrice,
        ),
      ],
    ),
  );
}
