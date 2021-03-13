import "package:flutter/material.dart";
import "package:frontloops_08/Wallet.dart";

class CardItem extends StatefulWidget {
  final Wallet child;
  CardItem({@required this.child});
  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  double borderWidth;
  Color borderColor;
  @override
  Widget build(BuildContext context) {
    if (this.widget.child.isActive()) {
      setState(() {
        this.borderWidth = 3.0;
        this.borderColor = Color.fromRGBO(125, 136, 190, 1);
      });
    } else {
      setState(() {
        this.borderWidth = 1.0;
        this.borderColor = Color.fromRGBO(216, 216, 216, 1);
      });
    }
    return Container(
      margin: EdgeInsets.only(bottom: 30.0),
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "./assets/images/${this.widget.child.getImage()}",
            scale: 8.0,
          ),
          SizedBox(height: 20.0),
          Text(
            this.widget.child.getCardNumber(),
            style: TextStyle(
              fontSize: 24.0,
              color: Color.fromRGBO(105, 105, 105, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "Valid thru: ${this.widget.child.getExpireDate()}",
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
          width: this.borderWidth,
          color: this.borderColor,
        ),
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
    );
  }
}
