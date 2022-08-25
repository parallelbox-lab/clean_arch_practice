import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff463C74);
const kSecondaryColor = Color(0xffFFC80A);
const kTertiaryColor = Color(0xff444444);
const kBlackColor = Color(0xff000000);
const kPadding = EdgeInsets.all(24);
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");