import 'package:e_commerce_app/main.dart';
import 'package:e_commerce_app/screens/boarding_screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(251, 251, 253, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/res/Vector.svg',
              width: 54.0,
              height: 62.0,
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Text(
              "Log in",
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 35.0,
            ),
            Container(
              width: 330,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              child: const TextField(
                textAlign: TextAlign.start,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Color.fromRGBO(246, 121, 82, 1),
                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(35, 10, 6, 0.5),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 330,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              child: const TextField(
                textAlign: TextAlign.start,
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color.fromRGBO(246, 121, 82, 1),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(35, 10, 6, 0.5),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(
                          color: Color.fromRGBO(35, 10, 6, 1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: const Color.fromRGBO(246, 121, 82, 1)),
              width: 190,
              height: 50,
              // color: const Color.fromRGBO(246, 121, 82, 1),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MyHomePage()));
                },
                child: const Text(
                  'Log in',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  width: 85.0,
                  child: Divider(
                    color: Color.fromRGBO(35, 46, 36, 0.6),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Or',
                  style: TextStyle(
                      color: Color.fromRGBO(35, 10, 6, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0),
                ),
                SizedBox(
                  width: 20.0,
                ),
                SizedBox(
                  width: 85.0,
                  child: Divider(
                    color: Color.fromRGBO(35, 46, 36, 0.6),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    'assets/res/facebook.svg',
                    height: 35,
                    width: 35,
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Image.asset(
                    'assets/res/google.png',
                    height: 37,
                    width: 37,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                      color: Color.fromRGBO(35, 10, 6, 0.5),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignupPage()));
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                        color: Color.fromRGBO(28, 26, 25, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
