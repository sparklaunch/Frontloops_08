import "package:flutter/material.dart";
import "package:intl/intl.dart";

import "package:frontloops_08/Balance.dart";
import "package:frontloops_08/components/Price.dart";

class BalanceItem extends StatelessWidget {
  final dateFormat = DateFormat("dd MMMM yyyy");
  final Balance child;
  BalanceItem({@required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 30.0,
      ),
      child: Row(
        children: [
          Container(
            width: 35.0,
            height: 35.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color.fromRGBO(218, 218, 218, 1),
              ),
            ),
            child: Image.asset(
              "./assets/images/${this.child.getBalanceType() == BalanceType.Expenditure ? "minus.png" : "plus.png"}",
            ),
          ),
          SizedBox(
            width: 40.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.child.getDescription(),
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "${this.child.getBalanceCategory().toString().split(".").last} #${this.child.getCode()} - ${this.dateFormat.format(this.child.getDate())}",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(173, 173, 173, 1),
                  ),
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
