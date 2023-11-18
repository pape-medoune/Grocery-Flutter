import 'package:flutter/material.dart';

class Items {
  String name;
  String image;
  String price;
  Color color;

  Items({required this.name, required this.image, required this.price,required this.color });
}


List<Items> CardItem=[
  Items(
    name: 'Avocate',
    image: 'images/18965810-removebg-preview.png',
    price: '700',
    color: Colors.green,
  ),
   Items(
    name: 'Banana',
    image: 'images/18965820-removebg-preview.png',
    price: '500',
    color: Colors.yellow,
  ),
  Items(
    name: 'Peach',
    image: 'images/1908.i308.003.p.m005.c20.realistic_fruits_set-03-removebg-preview.png',
    price: '1300',
    color: Colors.grey,
  ),
];