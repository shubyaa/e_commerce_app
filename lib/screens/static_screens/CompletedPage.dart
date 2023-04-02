import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:e_commerce_app/theme/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompletedPage extends StatelessWidget {
  const CompletedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              // height: MediaQuery.of(context).size.height * .5,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset(
                    "assets/logo/completed.svg",
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Congratulations !!!',
                        textAlign: TextAlign.center,
                        style: sectionHeadText,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Payment successful, you can get the reciept and track your order or back to home',
                        textAlign: TextAlign.center,
                        style: greyTextProuct,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: ElevatedButton(
                            style: redButtonStyle,
                            onPressed: () {},
                            child: Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height * .06,
                              width: MediaQuery.of(context).size.width * .5,
                              child: Text("Go to your reciept",
                                  style: redButtonText),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: ElevatedButton(
                            style: lightRedButtonStyle,
                            onPressed: () {
                              Navigator.of(context)
                                  .popUntil((route) => route.isFirst);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height * .06,
                              width: MediaQuery.of(context).size.width * .5,
                              child: Text("Back to Home",
                                  style: lightRedButtonText),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
