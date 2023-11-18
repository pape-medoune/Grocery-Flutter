import 'package:flutter/material.dart';

class myCard extends StatelessWidget {
  final String image;
  final String bgColor;
  final String texte;
  myCard(
      {super.key,
      required this.bgColor,
      required this.texte,
      required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,

        horizontal: 10,
      ),
      width: 175,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          15,
        ),
        color: Color(
          int.parse(bgColor),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            image,
            width: 100,
          ),
          Container(
            width: 190,
            padding: EdgeInsets.symmetric(
              vertical: 5, 
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                15,
              ),
              color: Colors.white,
            ),
            child: Text(
              texte,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 23, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
