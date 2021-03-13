import "package:flutter/material.dart";

import "package:frontloops_08/components/BalanceContainer.dart";
import "package:frontloops_08/components/WalletList.dart";
import "package:frontloops_08/components/CurrentBalance.dart";

import 'package:frontloops_08/constants.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: BalanceContainer(
          left: WalletList(),
          right: CurrentBalance(),
        ),
      ),
    );
  }
}
