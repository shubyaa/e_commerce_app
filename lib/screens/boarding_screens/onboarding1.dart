import 'package:e_commerce_app/screens/boarding_screens/onboarding2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(251, 251, 253, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 8, 8),
                  child: Row(
                    children: const [
                      Text(
                        "1",
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1), fontSize: 18.0),
                      ),
                      Text(
                        "/",
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                            fontSize: 18.0),
                      ),
                      Text(
                        "3",
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                            fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 260, top: 5),
                  child: MaterialButton(
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1), fontSize: 18.0),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            // const SizedBox(
            //   height: 30.0,
            // ),
            SvgPicture.asset(
              'assets/res/product.svg',
              height: 270,
              width: 100,
            ),
            // const SizedBox(
            //   height: 30.0,
            // ),
            const Text(
              'Choose Product',
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500),
            ),
            // const SizedBox(
            //   height: 25.0,
            // ),
            const Text(
              "A product is the item offered for sale.\nA product can be a service or an item.It can be \n physical or in virtual or cyber form",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.5),
                fontSize: 16.0,
              ),
            ),
            // const SizedBox(
            //   height: 30.0,
            // ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: const Color.fromRGBO(246, 121, 82, 1)),
              width: 170,
              height: 50,
              // color: const Color.fromRGBO(246, 121, 82, 1),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const OnBoarding2()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Next',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0),
                    ),
                    Icon(
                      Icons.navigate_next_rounded,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      size: 26.0,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
