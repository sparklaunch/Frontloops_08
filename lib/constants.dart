import "package:flutter/material.dart";

const Color kBackgroundColor = Color.fromRGBO(245, 198, 106, 1);

const double kContainerWidth = 1200.0;

final BoxDecoration kContainerBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(8.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      spreadRadius: 10.0,
      blurRadius: 10.0,
      offset: Offset(5, 5),
    ),
  ],
);
