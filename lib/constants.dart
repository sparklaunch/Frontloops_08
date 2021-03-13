import "package:flutter/material.dart";

const Color kBackgroundColor = Color.fromRGBO(245, 198, 106, 1);
const Color kActiveCardBorderColor = Color.fromRGBO(125, 136, 190, 1);
const Color kInactiveCardBorderColor = Color.fromRGBO(216, 216, 216, 1);
const Color kExpenditureColor = Color.fromRGBO(123, 141, 191, 1);
const Color kIncomeColor = Color.fromRGBO(126, 199, 85, 1);
const Color kWalletListColor = Color.fromRGBO(240, 240, 240, 1);

const double kContainerWidth = 1200.0;
const double kContainerHeight = 600.0;
const double kBalanceItemWidth = 35.0;
const double kActiveCardBorderWidth = 3.0;
const double kInactiveCardBorderWidth = 1.0;
const double kPriceDefaultFontSize = 36.0;
const double kPriceSmallFontSize = 24.0;

const Divider kCurrentBalanceDivider = Divider(
  color: Color.fromRGBO(217, 217, 217, 1),
);

final BoxDecoration kContainerBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(8.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      spreadRadius: 10.0,
      blurRadius: 10.0,
      offset: Offset(5, 5),
    ),
  ],
);

final BoxDecoration kBalanceItemSignBoxDecoration = BoxDecoration(
  shape: BoxShape.circle,
  border: Border.all(
    color: Color.fromRGBO(218, 218, 218, 1),
  ),
);

const EdgeInsets kBalanceItemPadding = EdgeInsets.symmetric(vertical: 30.0);
const EdgeInsets kCardMargin = EdgeInsets.only(bottom: 30.0);
const EdgeInsets kCardPadding = EdgeInsets.all(20.0);
const EdgeInsets kCurrentBalancePadding = EdgeInsets.all(50.0);
const EdgeInsets kWalletListPadding = EdgeInsets.all(50.0);

const SizedBox kGapBetweenSignAndContent = SizedBox(width: 40.0);
const SizedBox kGapBetweenBalanceItemTexts = SizedBox(height: 5.0);
const SizedBox kGapBetweenCardAndText = SizedBox(height: 20.0);
const SizedBox kGapBetweenTextAndExpireDate = SizedBox(height: 10.0);
const SizedBox kGapBetweenTitleAndDivider = SizedBox(height: 50.0);
const SizedBox kGapBetweenWalletTitleAndListView = SizedBox(height: 50.0);

const Offset kPriceDefaultOffset = Offset(0, -8);
const Offset kPriceSmallOffset = Offset(0, -5);

const TextStyle kBalanceItemTitleTextStyle = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.w900,
);

const TextStyle kBalanceItemSubtitleTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  color: Color.fromRGBO(173, 173, 173, 1),
);

const TextStyle kCardNumberTextStyle = TextStyle(
  fontSize: 24.0,
  color: Color.fromRGBO(105, 105, 105, 1),
  fontWeight: FontWeight.bold,
);

const TextStyle kExpireDateTextStyle = TextStyle(
  fontSize: 20.0,
  color: Color.fromRGBO(105, 105, 105, 1),
  fontWeight: FontWeight.bold,
);

const TextStyle kCurrentBalanceTextStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);

const TextStyle kMyWalletsTextStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);
