import "package:flutter/foundation.dart";

enum BalanceType {
  Expenditure,
  Income,
}

enum BalanceCategory {
  Electronics,
  Payment,
  Other,
  Entertainment,
  Cafes,
}

class Balance {
  BalanceType _balanceType;
  BalanceCategory _balanceCategory;
  String _description;
  String _code;
  DateTime _date;
  double _amount;
  Balance({
    @required BalanceType balanceType,
    BalanceCategory balanceCategory = BalanceCategory.Other,
    @required String code,
    @required String description,
    @required DateTime date,
    @required double amount,
  }) {
    this._balanceType = balanceType;
    this._balanceCategory = balanceCategory;
    this._description = description;
    this._code = code;
    this._date = date;
    this._amount = amount;
  }
  BalanceType getBalanceType() {
    return this._balanceType;
  }

  BalanceCategory getBalanceCategory() {
    return this._balanceCategory;
  }

  String getDescription() {
    return this._description;
  }

  String getCode() {
    return this._code;
  }

  DateTime getDate() {
    return this._date;
  }

  double getAmount() {
    return this._amount;
  }
}
