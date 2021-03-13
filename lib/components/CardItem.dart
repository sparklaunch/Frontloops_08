import "package:flutter/material.dart";
import "package:frontloops_08/Wallet.dart";

import "package:frontloops_08/constants.dart";

class CardItem extends StatefulWidget {
  final Wallet child;
  CardItem({@required this.child});
  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  double borderWidth;
  Color borderColor;
  @override
  Widget build(BuildContext context) {
    if (this.widget.child.isActive()) {
      setState(() {
        this.borderWidth = kActiveCardBorderWidth;
        this.borderColor = kActiveCardBorderColor;
      });
    } else {
      setState(() {
        this.borderWidth = kInactiveCardBorderWidth;
        this.borderColor = kInactiveCardBorderColor;
      });
    }
    return Container(
      margin: kCardMargin,
      padding: kCardPadding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "./assets/images/${this.widget.child.getImage()}",
            scale: 8.0,
          ),
          kGapBetweenCardAndText,
          Text(
            this.widget.child.getCardNumber(),
            style: kCardNumberTextStyle,
          ),
          kGapBetweenTextAndExpireDate,
          Text(
            "Valid thru: ${this.widget.child.getExpireDate()}",
            style: kExpireDateTextStyle,
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: this.borderWidth,
          color: this.borderColor,
        ),
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
    );
  }
}
