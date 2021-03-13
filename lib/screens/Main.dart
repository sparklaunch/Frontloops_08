import "package:flutter/material.dart";

import "package:frontloops_08/components/BalanceContainer.dart";
import "package:frontloops_08/components/WalletList.dart";
import "package:frontloops_08/components/CurrentBalance.dart";
import "package:frontloops_08/Wallet.dart";
import "package:frontloops_08/WalletBrain.dart";

import 'package:frontloops_08/constants.dart';

final WalletBrain walletBrain = WalletBrain();

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Wallet> wallets = walletBrain.getWallets();
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: BalanceContainer(
          left: WalletList(
            wallets: wallets,
          ),
          right: CurrentBalance(),
        ),
      ),
    );
  }
}
