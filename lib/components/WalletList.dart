import "package:flutter/material.dart";

import "package:frontloops_08/Wallet.dart";
import "package:frontloops_08/components/CardItem.dart";
import "package:frontloops_08/constants.dart";

class WalletList extends StatelessWidget {
  final List<Wallet> wallets;
  WalletList({@required this.wallets});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kWalletListPadding,
      color: kWalletListColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Wallets",
                style: kMyWalletsTextStyle,
              ),
              Image.asset(
                "./assets/images/plus.png",
                scale: 0.6,
              ),
            ],
          ),
          kGapBetweenWalletTitleAndListView,
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
