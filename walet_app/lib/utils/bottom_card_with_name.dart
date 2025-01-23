import 'package:flutter/material.dart';

class BottomCardWithName extends StatelessWidget {
  final String iconImage;
  final String name;
  final String detail;
  final color;
  const BottomCardWithName(
      {super.key,
      required this.color,
      required this.detail,
      required this.iconImage,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        iconImage,
                        height: 10,
                        width: 10,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(width: 16),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(height: 4),
                        Text(
                          detail,
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 13,
                              color: Colors.grey[900]),
                        )
                      ],
                    ),
                  ],
                ),
                Icon(Icons.keyboard_arrow_right)
              ],
            )
          ],
        ),
      ),
    );
  }
}
