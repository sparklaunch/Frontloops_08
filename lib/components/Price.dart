import "package:flutter/material.dart";

import "package:frontloops_08/Balance.dart";

class Price extends StatelessWidget {
  final BalanceType balanceType;
  final double price;
  Price({this.balanceType = BalanceType.None, @required this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            "\$${this.price.toStringAsFixed(0)}.",
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.w900,
            ),
          ),
          Transform.translate(
            offset: Offset(0, -8),
            child: Text(
              this.price.toStringAsFixed(2).split(".").last.toString(),
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
