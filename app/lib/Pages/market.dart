import 'package:app/components/card.dart';
import 'package:app/constants/cardItems.dart';
import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  const Market({Key? key}) : super(key: key);

  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.shopping_cart,
        ),
        onPressed: () {
          Navigator.of(context).pushNamed('card');
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Expanded(
            child: Container(
              height: 1500,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_rounded,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Dakar Senegal",
                              style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 118, 126, 135),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            50,
                          ),
                          child: Image.asset(
                            'images/a2c58331265677e8f7435dfcc72aad30.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Good Morning, Medoune",
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 129, 137, 145),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        right: 30,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Lets Order Fresh Items for you",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Categories",
                              style: TextStyle(
                                fontSize: 21,
                                color: Color.fromARGB(255, 13, 13, 13),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.chevron_right,
                          size: 30,
                          color: Color.fromARGB(255, 219, 224, 229),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                      width: double.infinity,
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          myCard(
                            texte: "Fruits",
                            image: "images/Mix_fruits_-3-removebg-preview.png",
                            bgColor: '0xFFEFFFDD',
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          myCard(
                            texte: "Vegetables",
                            image:
                                "images/panier-plein-legumes-removebg-preview.png",
                            bgColor: '0xffFFF0DA',
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          myCard(
                            texte: "Meats",
                            image:
                                "images/steak-cru-papier-blanc-removebg-preview.png",
                            bgColor: '0xffFFEAE5',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "My Orders",
                              style: TextStyle(
                                fontSize: 21,
                                color: Color.fromARGB(255, 13, 13, 13),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.chevron_right,
                          size: 30,
                          color: Color.fromARGB(255, 219, 224, 229),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 700,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: CardItem.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(
                                  top: 5,
                                  bottom: 15,
                                ),
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
                                  color: CardItem[index].color,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Image.asset(
                                      CardItem[index].image,
                                      width: 100,
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 5,
                                              horizontal: 10,
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                15,
                                              ),
                                              color: Colors.white,
                                            ),
                                            child: Text(
                                              CardItem[index].name,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 23,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                vertical: 5,
                                                horizontal: 10,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              backgroundColor: Colors.blue,
                                            ),
                                            child: Text(
                                              'Order It ' +
                                                  CardItem[index].price +
                                                  ' FCFA',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 23,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
