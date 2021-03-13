import "package:flutter/material.dart";
import "package:frontloops_08/Wallet.dart";

class CardItem extends StatelessWidget {
  final Wallet child;
  CardItem({@required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.0),
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "./assets/images/${this.child.getImage()}",
            scale: 8.0,
          ),
          SizedBox(height: 20.0),
          Text(
            this.child.getCardNumber(),
            style: TextStyle(
              fontSize: 24.0,
              color: Color.fromRGBO(105, 105, 105, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "Valid thru: ${this.child.getExpireDate()}",
            style: TextStyle(
              fontSize: 20.0,
              color: Color.fromRGBO(105, 105, 105, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(216, 216, 216, 1),
        ),
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
    );
  }
}
