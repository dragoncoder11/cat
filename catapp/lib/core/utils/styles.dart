import 'package:catapp/core/utils/constants.dart';
import 'package:flutter/material.dart';

abstract class Styles{
  static TextStyle style24Bold=const TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
    static TextStyle style36Bold=const TextStyle(
    color: kTextColor,
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );
   static TextStyle style24w300=const TextStyle(
    color: kTextColor,
    fontSize: 24,
    fontWeight: FontWeight.w300,
  );
    static TextStyle style36w500=const TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
   static TextStyle style14w300=const TextStyle(
    color: kTextColor,
    fontSize: 14,
    fontWeight: FontWeight.w300
  );
  
  static TextStyle style9= const TextStyle(
    color: kTextColor,
    fontSize: 9,
    fontWeight: FontWeight.w400,
    fontFamily: 'Arial',
  );
  
  static TextStyle style13= const TextStyle(
    color: kTextColor,
    fontSize: 13,
    fontWeight: FontWeight.bold,
    fontFamily: 'Arial',
  );
  
  static TextStyle style20= const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
} 