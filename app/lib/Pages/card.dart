import 'package:flutter/material.dart';

class CardPurchase extends StatelessWidget {
  const CardPurchase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        centerTitle: true,
        // backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Text(
          "Bonjour Mouhamedoune",
        ),
      ),
    );
  }
}
