import 'package:ecom_firebase/constant/dimens.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle logoText = TextStyle(
      color: Colors.black,
      fontFamily: 'Poppins',
      fontSize: Dimens.fifteen,
      fontWeight: FontWeight.w600);

  static TextStyle bold24 = TextStyle(
      fontFamily: 'Poppins',
      fontSize: Dimens.twenty,
      fontWeight: FontWeight.w900);

  static TextStyle regular10 = TextStyle(
      color: Colors.black,
      fontFamily: 'Poppins',
      fontSize: Dimens.ten,
      fontWeight: FontWeight.w200);

  static TextStyle registerStyle = TextStyle(
      color: Colors.white, fontFamily: 'Poppins', fontSize: Dimens.twenty);

  static TextStyle anAccount = TextStyle(
      color: Colors.black,
      fontSize: Dimens.fifteen,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w100);

  static TextStyle secRegister = TextStyle(
      color: Colors.white,
      fontSize: Dimens.ten);

  static TextStyle cart = TextStyle(
      color: Colors.black,
      fontSize: Dimens.fifteen,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w300);


  static TextStyle letRegister = TextStyle(
      color: Colors.black,
      fontFamily: 'Poppins',
      fontSize: Dimens.twenty,
      fontWeight: FontWeight.w600);
    

}
