/*
Copyright 2022 The dahliaOS Authors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  hoverColor: Colors.white24,
  primaryColor: Colors.deepOrange,
  backgroundColor: Colors.white10,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange)
      .copyWith(secondary: const Color(0xFF212121)),
  iconTheme: const IconThemeData(color: Colors.deepOrange),
  textTheme: const TextTheme(
    button: TextStyle(
      color: Colors.white,
      fontSize: 13,
      fontWeight: FontWeight.normal,
      overflow: TextOverflow.ellipsis,
    ),
    headline1: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 15,
      overflow: TextOverflow.ellipsis,
    ),
    subtitle1: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontSize: 15,
      overflow: TextOverflow.ellipsis,
    ),
    headline2: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      overflow: TextOverflow.ellipsis,
    ),
    subtitle2: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontSize: 14,
      overflow: TextOverflow.ellipsis,
    ),
  ),
  canvasColor: const Color(0xFF212121),
  cardTheme: const CardTheme(
    color: Colors.white10,
    elevation: 0,
    shape: RoundedRectangleBorder(),
    margin: EdgeInsets.all(5),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      overflow: TextOverflow.ellipsis,
    ),
    hintStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontSize: 14,
      overflow: TextOverflow.ellipsis,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.zero,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.deepOrangeAccent),
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 15,
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis,
    ),
    centerTitle: true,
    backgroundColor: Color(0xFF212121),
    iconTheme: IconThemeData(color: Colors.deepOrange),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.all<Size>(const Size(120, 40)),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
      elevation: MaterialStateProperty.all(0),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        const RoundedRectangleBorder(),
      ),
    ),
  ),
);

final ThemeData lightTheme = ThemeData(
  hoverColor: Colors.grey.shade400,
  primaryColor: Colors.deepOrange,
  backgroundColor: Colors.grey.shade200,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange)
      .copyWith(secondary: Colors.white),
  iconTheme: const IconThemeData(color: Colors.deepOrange),
  textTheme: const TextTheme(
    button: TextStyle(
      color: Colors.white,
      fontSize: 13,
      fontWeight: FontWeight.normal,
      overflow: TextOverflow.ellipsis,
    ),
    headline1: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 15,
      overflow: TextOverflow.ellipsis,
    ),
    subtitle1: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 15,
      overflow: TextOverflow.ellipsis,
    ),
    headline2: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      overflow: TextOverflow.ellipsis,
    ),
    subtitle2: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 14,
      overflow: TextOverflow.ellipsis,
    ),
  ),
  canvasColor: const Color.fromRGBO(255, 255, 255, 1),
  cardTheme: CardTheme(
    color: Colors.grey.shade200,
    elevation: 0,
    shape: const RoundedRectangleBorder(),
    margin: const EdgeInsets.all(5),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      overflow: TextOverflow.ellipsis,
    ),
    hintStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 14,
      overflow: TextOverflow.ellipsis,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.zero,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.deepOrangeAccent),
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis,
    ),
    centerTitle: true,
    backgroundColor: Color.fromRGBO(255, 255, 255, 1),
    iconTheme: IconThemeData(color: Colors.deepOrange),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.all<Size>(const Size(120, 40)),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
      elevation: MaterialStateProperty.all(0),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        const RoundedRectangleBorder(),
      ),
    ),
  ),
);
