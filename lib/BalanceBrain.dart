import "package:frontloops_08/Balance.dart";

class BalanceBrain {
  List<Balance> _balances = [
    Balance(
      balanceType: BalanceType.Expenditure,
      balanceCategory: BalanceCategory.Electronics,
      code: "32343424",
      description: "Apple iPhone 7, 128 GB",
      date: DateTime(2015, 7, 12),
      amount: 650.0,
    ),
    Balance(
      balanceType: BalanceType.Income,
      balanceCategory: BalanceCategory.Payment,
      code: "5435",
      description: "Funds Added",
      date: DateTime(2015, 7, 11),
      amount: 900.0,
    ),
    Balance(
      balanceType: BalanceType.Expenditure,
      balanceCategory: BalanceCategory.Other,
      code: "745237423",
      description: "Energy Bill",
      date: DateTime(2015, 7, 11),
      amount: 84.9,
    ),
    Balance(
      balanceType: BalanceType.Expenditure,
      balanceCategory: BalanceCategory.Entertainment,
      code: "32343424",
      description: "The Eye Cinema Ticket",
      date: DateTime(2015, 7, 10),
      amount: 40.0,
    ),
    Balance(
      balanceType: BalanceType.Expenditure,
      balanceCategory: BalanceCategory.Cafes,
      code: "32448",
      description: "McFood Restaurant",
      date: DateTime(2015, 7, 10),
      amount: 10.5,
    ),
    Balance(
      balanceType: BalanceType.Expenditure,
      balanceCategory: BalanceCategory.Other,
      code: "2138453",
      description: "Gas Station",
      date: DateTime(2015, 7, 10),
      amount: 30.0,
    ),
  ];
}
