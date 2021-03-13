import 'package:flutter/material.dart';

import "package:frontloops_08/screens/Main.dart";

void main() {
  runApp(
    MaterialApp(
      title: "Frontloops 08",
      theme: ThemeData(
        fontFamily: "Open Sans",
      ),
      routes: {
        "/": (context) => Main(),
      },
      initialRoute: "/",
    ),
  );
}
