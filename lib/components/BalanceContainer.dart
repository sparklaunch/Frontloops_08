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
      height: 600.0,
      clipBehavior: Clip.hardEdge,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: this.left,
          ),
          Expanded(
            flex: 5,
            child: this.right,
          ),
        ],
      ),
      decoration: kContainerBoxDecoration,
    );
  }
}
