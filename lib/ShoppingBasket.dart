// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shop_app/Cart_Screen.dart';
import 'ShoppingBasketItem.dart';
import 'colors.dart';

class ShoppingBasket extends StatefulWidget {
  const ShoppingBasket({super.key});

  @override
  State<ShoppingBasket> createState() => _ShoppingBasketState();
}

class _ShoppingBasketState extends State<ShoppingBasket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundco,
      appBar: AppBar(
        centerTitle: true,
        title: Title(
            color: Colors.black,
            child: Text(
              'MyCart',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )),
        leading: IconButton(
          color: Colors.black,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Cart_Screen()));
          },
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: backgroundco,
        elevation: 0,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '(Remove 3)',
                style: TextStyle(fontSize: 15, color: Colors.red),
              ),
            ),
          )
        ],
      ),
      body: BasketUI(),
    );
  }

  Widget BasketUI() {
    return Column(children: [
      SizedBox(
        height: 300,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: ((context, index) {
            return GestureDetector(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ShoppingBasketItem(RemoveItem, index),
              ),
            );
          }),
        ),
      ),
      Container(
        height: 80,
        color: backgroundco,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    shadowColor: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(0, 20, 10, 20),
                          hintText: "Promo Code",
                          icon: Padding(
                              padding: EdgeInsets.all(10),
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text('data')))),
                      textAlign: TextAlign.left,
                      style: TextStyle(color: fontco, fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        height: 40,
        color: backgroundco,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Sub Total:',
                style: TextStyle(fontSize: 15, color: fontco),
              ),
              Text(
                '10.50',
                style: TextStyle(fontSize: 15, color: fontco),
              )
            ],
          ),
        ),
      ),
      Container(
        height: 40,
        color: backgroundco,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Shiping:',
                style: TextStyle(fontSize: 15, color: fontco),
              ),
              Text(
                '2.50',
                style: TextStyle(fontSize: 15, color: fontco),
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          height: 2,
          color: Colors.black54,
        ),
      ),
      Expanded(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
                color: mainco,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                )),
            width: double.infinity,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Total: (2Items)',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Text(
                        '300',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ShoppingBasket()));
                    },
                    child: Text(
                      'Proceed To checkout',
                      style: TextStyle(
                          color: mainco,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }

  void RemoveItem(int index) {
    setState(() {});
  }
}
