import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoarding3 extends StatefulWidget {
  const OnBoarding3({super.key});

  @override
  State<OnBoarding3> createState() => _OnBoarding3State();
}

class _OnBoarding3State extends State<OnBoarding3> {
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
                        "3",
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1), fontSize: 18.0),
                      ),
                      Text(
                        "/",
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1), fontSize: 18.0),
                      ),
                      Text(
                        "3",
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1), fontSize: 18.0),
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
              'assets/res/order.svg',
              height: 270,
              width: 100,
            ),
            // const SizedBox(
            //   height: 30.0,
            // ),
            const Text(
              'Get Your Order',
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500),
            ),
            // const SizedBox(
            //   height: 25.0,
            // ),
            const Text(
              "Business or commerce an order is a stated \n intention either spoken to engage in a \n commercial transaction specific products  ",
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
                      builder: (context) => const MyHomePage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Get Started',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0),
                    ),
                    Icon(
                      Icons.keyboard_double_arrow_right_rounded,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      size: 26.0,
                    ),
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
