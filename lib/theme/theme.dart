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
  highlightColor: Colors.deepOrangeAccent,
  focusColor: Colors.deepOrangeAccent,
  splashColor: Colors.deepOrangeAccent,
  textTheme: const TextTheme(
    button: TextStyle(
      color: Colors.white,
      fontSize: 11,
      fontWeight: FontWeight.normal,
      overflow: TextOverflow.ellipsis,
    ),
    headline1: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 17,
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
      fontSize: 12,
      overflow: TextOverflow.ellipsis,
    ),
    subtitle2: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontSize: 11,
      overflow: TextOverflow.ellipsis,
    ),
  ),
  canvasColor: const Color(0xFF212121),
  cardColor: Colors.white10,
  cardTheme: const CardTheme(
    color: Colors.white10,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    margin: EdgeInsets.all(5),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: Colors.white10,
    prefixIconColor: Colors.deepOrange,
    labelStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      overflow: TextOverflow.ellipsis,
    ),
    hintStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontSize: 12,
      overflow: TextOverflow.ellipsis,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.deepOrangeAccent),
      borderRadius: BorderRadius.all(Radius.circular(10)),
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
  chipTheme: const ChipThemeData(
    pressElevation: 0,
    labelPadding: EdgeInsets.all(4),
    checkmarkColor: Colors.white,
    showCheckmark: true,
    elevation: 0,
    backgroundColor: Colors.white10,
    disabledColor: Colors.grey,
    selectedColor: Colors.deepOrange,
    secondarySelectedColor: Colors.orange,
    padding: EdgeInsets.all(8),
    labelStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontSize: 13,
      overflow: TextOverflow.ellipsis,
    ),
    secondaryLabelStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontSize: 12,
      overflow: TextOverflow.ellipsis,
    ),
    brightness: Brightness.dark,
  ),
  listTileTheme: const ListTileThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    iconColor: Colors.deepOrange,
    textColor: Colors.black,
    tileColor: Colors.white10,
    selectedColor: Colors.deepOrangeAccent,
  ),
  dialogTheme: const DialogTheme(
    backgroundColor: Color(0xFF212121),
    elevation: 20,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
      side: MaterialStateProperty.all<BorderSide>(
        const BorderSide(color: Colors.deepOrange, width: 2),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 13,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      fixedSize: MaterialStateProperty.all<Size>(const Size(120, 45)),
      elevation: MaterialStateProperty.all(0),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 13,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      fixedSize: MaterialStateProperty.all<Size>(const Size(90, 45)),
      elevation: MaterialStateProperty.all(0),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontSize: 13,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      fixedSize: MaterialStateProperty.all<Size>(const Size(120, 45)),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
      elevation: MaterialStateProperty.all(0),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
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
  highlightColor: Colors.deepOrangeAccent,
  focusColor: Colors.deepOrangeAccent,
  splashColor: Colors.deepOrangeAccent,
  textTheme: const TextTheme(
    button: TextStyle(
      color: Colors.white,
      fontSize: 11,
      fontWeight: FontWeight.normal,
      overflow: TextOverflow.ellipsis,
    ),
    headline1: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 17,
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
      fontSize: 12,
      overflow: TextOverflow.ellipsis,
    ),
    subtitle2: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 11,
      overflow: TextOverflow.ellipsis,
    ),
  ),
  canvasColor: const Color.fromRGBO(255, 255, 255, 1),
  cardColor: Colors.grey.shade200,
  cardTheme: CardTheme(
    color: Colors.grey.shade200,
    elevation: 0,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    margin: const EdgeInsets.all(5),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey.shade200,
    prefixIconColor: Colors.deepOrange,
    labelStyle: const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      overflow: TextOverflow.ellipsis,
    ),
    hintStyle: const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 12,
      overflow: TextOverflow.ellipsis,
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.deepOrangeAccent),
      borderRadius: BorderRadius.all(Radius.circular(10)),
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
  chipTheme: ChipThemeData(
    pressElevation: 0,
    labelPadding: const EdgeInsets.all(4),
    checkmarkColor: Colors.black,
    showCheckmark: true,
    elevation: 0,
    backgroundColor: Colors.grey.shade200,
    disabledColor: Colors.grey.shade100,
    selectedColor: Colors.deepOrange,
    secondarySelectedColor: Colors.orange,
    padding: const EdgeInsets.all(8),
    labelStyle: const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 13,
      overflow: TextOverflow.ellipsis,
    ),
    secondaryLabelStyle: const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 12,
      overflow: TextOverflow.ellipsis,
    ),
    brightness: Brightness.light,
  ),
  listTileTheme: ListTileThemeData(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    iconColor: Colors.deepOrange,
    textColor: Colors.black,
    tileColor: Colors.grey.shade200,
    selectedColor: Colors.deepOrangeAccent,
  ),
  dialogTheme: const DialogTheme(
    backgroundColor: Color.fromRGBO(255, 255, 255, 1),
    elevation: 20,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
      side: MaterialStateProperty.all<BorderSide>(
        const BorderSide(color: Colors.deepOrange, width: 2),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 13,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      fixedSize: MaterialStateProperty.all<Size>(const Size(120, 45)),
      elevation: MaterialStateProperty.all(0),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 13,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      fixedSize: MaterialStateProperty.all<Size>(const Size(90, 45)),
      elevation: MaterialStateProperty.all(0),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontSize: 13,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      fixedSize: MaterialStateProperty.all<Size>(const Size(120, 45)),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
      elevation: MaterialStateProperty.all(0),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    ),
  ),
);
