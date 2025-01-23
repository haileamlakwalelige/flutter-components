import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expireMonth;
  final int expireYear;
  final color;

  const BigCard(
      {super.key,
      required this.balance,
      required this.cardNumber,
      required this.color,
      required this.expireMonth,
      required this.expireYear});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(18)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Balance",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "\$$balance",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$cardNumber",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '$expireMonth/$expireYear',
                  style: TextStyle(color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
