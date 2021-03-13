import "package:flutter/foundation.dart";

class Wallet {
  String _image;
  String _cardNumber;
  String _expireDate;
  bool _isActive;
  Wallet({
    @required String image,
    @required String cardNumber,
    @required String expireDate,
    @required bool isActive,
  }) {
    this._image = image;
    this._cardNumber = cardNumber;
    this._expireDate = expireDate;
    this._isActive = isActive;
  }
  String getImage() {
    return this._image;
  }

  String getCardNumber() {
    return this._cardNumber;
  }

  String getExpireDate() {
    return this._expireDate;
  }

  bool isActive() {
    return this._isActive;
  }
}
