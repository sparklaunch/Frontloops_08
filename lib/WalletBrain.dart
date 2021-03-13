import "package:frontloops_08/Wallet.dart";

class WalletBrain {
  List<Wallet> _wallets = [
    Wallet(
      image: "visa.png",
      cardNumber: "**** **** **** 2562",
      expireDate: "12/17",
      isActive: false,
    ),
    Wallet(
      image: "mastercard.png",
      cardNumber: "**** **** **** 2101",
      expireDate: "07/19",
      isActive: true,
    ),
    Wallet(
      image: "maestro.png",
      cardNumber: "**** **** **** 8335",
      expireDate: "09/17",
      isActive: false,
    ),
  ];
  List<Wallet> getWallets() {
    return this._wallets;
  }
}
