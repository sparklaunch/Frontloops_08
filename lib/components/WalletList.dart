import "package:flutter/material.dart";

import "package:frontloops_08/Wallet.dart";
import "package:frontloops_08/components/CardItem.dart";

class WalletList extends StatelessWidget {
  final List<Wallet> wallets;
  WalletList({@required this.wallets});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50.0),
      color: Color.fromRGBO(240, 240, 240, 1),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Wallets",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                "./assets/images/plus.png",
                scale: 0.6,
              ),
            ],
          ),
          SizedBox(height: 50.0),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) => CardItem(
              child: this.wallets[index],
            ),
            itemCount: this.wallets.length,
          ),
        ],
      ),
    );
  }
}
