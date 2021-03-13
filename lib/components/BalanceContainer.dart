import "package:flutter/material.dart";
import 'package:frontloops_08/constants.dart';

class BalanceContainer extends StatelessWidget {
  final Widget left;
  final Widget right;
  BalanceContainer({@required this.left, @required this.right});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: kContainerWidth,
      child: Row(
        children: [
          this.left,
          this.right,
        ],
      ),
      decoration: kContainerBoxDecoration,
    );
  }
}
