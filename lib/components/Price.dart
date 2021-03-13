import "package:flutter/material.dart";

import "package:frontloops_08/Balance.dart";

class Price extends StatefulWidget {
  final BalanceType balanceType;
  final double price;
  Price({this.balanceType = BalanceType.None, @required this.price});
  @override
  _PriceState createState() => _PriceState();
}

class _PriceState extends State<Price> {
  Color priceColor;
  double priceFontSize = 36.0;
  Offset priceOffset = Offset(0, -8);

  @override
  Widget build(BuildContext context) {
    switch (this.widget.balanceType) {
      case BalanceType.None:
        setState(() {
          this.priceColor = Colors.black;
        });
        break;
      case BalanceType.Expenditure:
        setState(() {
          this.priceOffset = Offset(0, -5);
          this.priceFontSize = 24.0;
          this.priceColor = Color.fromRGBO(123, 141, 191, 1);
        });
        break;
      case BalanceType.Income:
        setState(() {
          this.priceOffset = Offset(0, -5);
          this.priceFontSize = 24.0;
          this.priceColor = Color.fromRGBO(126, 199, 85, 1);
        });
        break;
    }
    return Container(
      child: Row(
        children: [
          Text(
            "\$${this.widget.price.toStringAsFixed(0)}.",
            style: TextStyle(
              fontSize: this.priceFontSize,
              fontWeight: FontWeight.w900,
              color: this.priceColor,
            ),
          ),
          Transform.translate(
            offset: this.priceOffset,
            child: Text(
              this.widget.price.toStringAsFixed(2).split(".").last.toString(),
              style: TextStyle(
                fontSize: this.priceFontSize * 0.6,
                fontWeight: FontWeight.bold,
                color: this.priceColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
