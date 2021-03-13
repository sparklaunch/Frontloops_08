import "package:flutter/material.dart";
import "package:intl/intl.dart";

import "package:frontloops_08/Balance.dart";
import "package:frontloops_08/components/Price.dart";
import "package:frontloops_08/constants.dart";

class BalanceItem extends StatelessWidget {
  final dateFormat = DateFormat("dd MMMM yyyy");
  final Balance child;
  BalanceItem({@required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kBalanceItemPadding,
      child: Row(
        children: [
          Container(
            width: kBalanceItemWidth,
            height: kBalanceItemWidth,
            decoration: kBalanceItemSignBoxDecoration,
            child: Image.asset(
              "./assets/images/${this.child.getBalanceType() == BalanceType.Expenditure ? "minus.png" : "plus.png"}",
            ),
          ),
          kGapBetweenSignAndContent,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.child.getDescription(),
                  style: kBalanceItemTitleTextStyle,
                ),
                kGapBetweenBalanceItemTexts,
                Text(
                  "${this.child.getBalanceCategory().toString().split(".").last} #${this.child.getCode()} - ${this.dateFormat.format(this.child.getDate())}",
                  style: kBalanceItemSubtitleTextStyle,
                ),
              ],
            ),
          ),
          Price(
            balanceType: this.child.getBalanceType(),
            price: this.child.getAmount(),
          ),
        ],
      ),
    );
  }
}
