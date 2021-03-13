import "package:flutter/material.dart";

import "package:frontloops_08/Balance.dart";
import "package:frontloops_08/constants.dart";

class Price extends StatefulWidget {
  final BalanceType balanceType;
  final double price;
  Price({this.balanceType = BalanceType.None, @required this.price});
  @override
  _PriceState createState() => _PriceState();
}

class _PriceState extends State<Price> {
  Color priceColor;
  double fontSizeMultiplier = 0.6;
  double priceFontSize = kPriceDefaultFontSize;
  Offset priceOffset = kPriceDefaultOffset;

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
          this.priceOffset = kPriceSmallOffset;
          this.priceFontSize = kPriceSmallFontSize;
          this.priceColor = kExpenditureColor;
        });
        break;
      case BalanceType.Income:
        setState(() {
          this.priceOffset = kPriceSmallOffset;
          this.priceFontSize = kPriceSmallFontSize;
          this.priceColor = kIncomeColor;
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
                fontSize: this.priceFontSize * this.fontSizeMultiplier,
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
