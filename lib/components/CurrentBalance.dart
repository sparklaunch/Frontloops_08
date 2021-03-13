import "package:flutter/material.dart";

import "package:frontloops_08/Balance.dart";
import "package:frontloops_08/components/BalanceItem.dart";
import "package:frontloops_08/components/Price.dart";

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
      padding: EdgeInsets.all(50.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Current Balance",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Price(
                price: getTotal(),
              ),
            ],
          ),
          SizedBox(height: 50.0),
          Divider(
            color: Color.fromRGBO(217, 217, 217, 1),
          ),
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
