import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';
import 'package:e_commerce_app/theme/colors.dart';

const navHeadStyle = TextStyle(
  fontSize: 18,
  color: Color.fromARGB(255, 65, 65, 65),
);

var capsuleTabOutlinedStyle = ButtonStyle(
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: const BorderSide(
        color: primaryColor,
      ),
    ),
  ),
);

const tabFilledText = TextStyle(
  color: Colors.white,
);

const tabOutlinedText = TextStyle(
  color: primaryColor,
);

var capsuleTabFilledStyle = ButtonStyle(
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: const BorderSide(
        color: primaryColor,
      ),
    ),
  ),
  backgroundColor: MaterialStateProperty.all(primaryColor),
);

// Colors and regarding product item card
TextStyle subTotalText = GoogleFonts.openSans(
  fontSize: 15,
  fontWeight: FontWeight.w600,
);

TextStyle productName = GoogleFonts.openSans(
  fontSize: 15,
  fontWeight: FontWeight.w400,
);

TextStyle productPrice = GoogleFonts.openSans(
  fontWeight: FontWeight.bold,
  fontSize: 15,
);

TextStyle sectionHeadText = GoogleFonts.openSans(
  fontSize: 25,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

TextStyle seeAllText = GoogleFonts.openSans(
  fontSize: 13,
  fontWeight: FontWeight.w500,
  color: primaryGrey,
);
TextStyle greyText = GoogleFonts.openSans(
  fontSize: 15,
  fontWeight: FontWeight.w500,
  color: primaryGrey,
);

TextStyle appBarTitle = GoogleFonts.openSans(
  color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.w600,
);
TextStyle walletCardText = GoogleFonts.openSans(
  color: Colors.black,
  fontSize: 15,
  fontWeight: FontWeight.w600,
);

TextStyle activeFilterTabText = GoogleFonts.openSans(
  fontSize: 12,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

TextStyle inActiveFilterTabText = GoogleFonts.openSans(
  fontSize: 12,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

TextStyle cardTextStyleBold = GoogleFonts.lato(
  fontSize: 18,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);
TextStyle walletCardPrice = GoogleFonts.lato(
  fontSize: 18,
  fontWeight: FontWeight.w600,
  color: Colors.red,
);

TextStyle cardTextStyleLight = GoogleFonts.lato(
  fontSize: 15,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

TextStyle redButtonText = GoogleFonts.openSans(
  fontSize: 15,
  fontWeight: FontWeight.w600,
);
TextStyle lightRedButtonText = GoogleFonts.openSans(
  color: primaryColor,
  fontSize: 15,
  fontWeight: FontWeight.w600,
);

TextStyle greyTextProuct = GoogleFonts.openSans(
  fontSize: 15,
  fontWeight: FontWeight.w500,
  color: primaryGrey,
);

TextStyle descriptionLight = GoogleFonts.openSans(
  fontSize: 12,
  color: Colors.grey[400],
  fontWeight: FontWeight.w600,
);

ButtonStyle redButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: primaryColor,
  foregroundColor: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(35),
  ),
);

ButtonStyle lightRedButtonStyle = ElevatedButton.styleFrom(
  elevation: 0.0,
  backgroundColor: lightPrimaryColor,
  foregroundColor: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(35),
  ),
);
