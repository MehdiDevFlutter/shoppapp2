// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

//import 'dart:ui';
import 'colors.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/ShoppingBasket.dart';
import 'package:shop_app/main.dart';
import 'Product.dart';

Product? _product;

class Cart_Screen extends StatefulWidget {
  int _count = 0;

  //const Cart_Screen({super.key});

  @override
  State<Cart_Screen> createState() => _Cart_ScreenState();
}

class _Cart_ScreenState extends State<Cart_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundco,
      appBar: AppBar(
        leading: IconButton(
          color: Iconco,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Store()));
          },
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: backgroundco,
        elevation: 0,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.black54,
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ShoppingBasket()));
            },
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Image.network(
                    'assets\image\Mobile.jpg',
                    fit: BoxFit.contain,
                  )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Title',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            'Category',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
          Text(
            'Description',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            'Description sony mobile',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '300',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                        color: mainco,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.white)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Decrement();
                            },
                            child: Icon(
                              Icons.chevron_left,
                              size: 15,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          widget._count.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                            onTap: () {
                              Increment();
                            },
                            child: Icon(
                              Icons.chevron_right,
                              size: 15,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ShoppingBasket()));
                    },
                    child: Text(
                      'Cart',
                      style: TextStyle(
                          color: mainco,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(80, 60)),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white)),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }

  void Increment() {
    setState(() {
      widget._count++;
    });
  }

  void Decrement() {
    setState(() {
      if (widget._count == 0)
        return;
      else {
        widget._count--;
      }
    });
  }
}
