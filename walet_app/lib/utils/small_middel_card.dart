import 'package:flutter/material.dart';

class SmallMiddelCard extends StatelessWidget {
  final String image;
  final String text;

  const SmallMiddelCard({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Center(
        child: Column(
          children: [
            Container(
              height: 80,
              width: 80,
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2, // How much the shadow spreads
                    blurRadius: 5, // How blurry the shadow is
                    offset: const Offset(0, 3), // Changes position of shadow
                  ),
                ],
              ),
              child: Image.asset(
                '$image',
                height: 20,
                width: 20,
                fit: BoxFit
                    .contain, // Ensures the image fits within the container
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                text,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
