import 'package:e_commerce_app/theme/colors.dart';
import 'package:e_commerce_app/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class addAddressPage extends StatefulWidget {
  const addAddressPage({super.key});

  @override
  State<addAddressPage> createState() => _addAddressPageState();
}

class _addAddressPageState extends State<addAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Add address",
          style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontWeight: FontWeight.w500,
              fontSize: 20),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Container(
        color: backgroudColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: const [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Delivery address",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const SizedBox(
              child: Divider(),
              width: 335,
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: 390,
              height: 57,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: primaryColor,
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Title",
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(35, 10, 6, 0.5),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400)),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: 390,
              height: 57,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: primaryColor,
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Building/ Room No.",
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(35, 10, 6, 0.5),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400)),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: 390,
              height: 57,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: primaryColor,
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Area, Landmark",
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(35, 10, 6, 0.5),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400)),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: 390,
              height: 57,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: primaryColor,
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Road",
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(35, 10, 6, 0.5),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400)),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: 390,
              height: 57,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: primaryColor,
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "City/ Town",
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(35, 10, 6, 0.5),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400)),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: 390,
              height: 57,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: primaryColor,
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Pincode",
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(35, 10, 6, 0.5),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400)),
                ),
              ),
            ),
            const SizedBox(
              height: 160,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ElevatedButton(
                  style: redButtonStyle,
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * .06,
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text("Submit", style: redButtonText),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
