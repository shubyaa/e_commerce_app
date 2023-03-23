import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/theme/colors.dart';

class NoServiceAvailable extends StatefulWidget {
  const NoServiceAvailable({super.key});

  @override
  State<NoServiceAvailable> createState() => _NoServiceAvailableState();
}

class _NoServiceAvailableState extends State<NoServiceAvailable> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Icon(
                    Icons.location_off_sharp,
                    size: 170,
                    color: primaryGrey,
                  ),
                  Column(
                    children: const [
                      Text(
                        'No Location Service available at your location !',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Dear user, we currently don\'t serve your location. Looking forward to serve you in near future',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
