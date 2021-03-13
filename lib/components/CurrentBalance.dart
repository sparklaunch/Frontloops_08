import "package:flutter/material.dart";

import "package:frontloops_08/Balance.dart";
import "package:frontloops_08/components/BalanceItem.dart";
import "package:frontloops_08/components/Price.dart";
import 'package:frontloops_08/constants.dart';

class CurrentBalance extends StatelessWidget {
  final List<Balance> balances;

  CurrentBalance({@required this.balances});
  @override
  Widget build(BuildContext context) {
    double getTotal() {
      return this.balances.fold(0.0, (double previousValue, Balance element) {
        if (element.getBalanceType() == BalanceType.Income) {
          return previousValue + element.getAmount();
        } else {
          return previousValue - element.getAmount();
        }
      });
    }

    return Container(
      padding: kCurrentBalancePadding,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Current Balance",
                style: kCurrentBalanceTextStyle,
              ),
              Price(
                price: getTotal(),
              ),
            ],
          ),
          kGapBetweenTitleAndDivider,
          kCurrentBalanceDivider,
          ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              return BalanceItem(
                child: this.balances[index],
              );
            },
            itemCount: this.balances.length,
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }
}
