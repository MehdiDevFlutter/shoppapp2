// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shop_app/colors.dart';

typedef OnRemovePressed(int index);

class ShoppingBasketItem extends StatefulWidget {
  int _count = 0;
  int _index;
  OnRemovePressed _onremovepressed;
  ShoppingBasketItem(this._onremovepressed, this._index);
  /*const???? ShoppingBasketItem({super.key});*/

  @override
  State<ShoppingBasketItem> createState() => _ShoppingBasketItemState();
}

class _ShoppingBasketItemState extends State<ShoppingBasketItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: SizedBox(
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            textDirection: TextDirection.ltr,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 40, left: 20),
                child: Image.asset(
                  'image/Mobile.jpg',
                  width: 150,
                  height: 100,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Text(
                      'Sony',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Decrement();
                            },
                            child: Icon(
                              Icons.chevron_left,
                              size: 20,
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Text(widget._count.toString()),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                            onTap: () {
                              Increment();
                            },
                            child: Icon(
                              Icons.chevron_right,
                              size: 20,
                            )),
                      ],
                    ),
                  )
                ],
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 10, bottom: 10, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            widget._onremovepressed(widget._index);
                          },
                          child: Icon(Icons.remove_circle_outline)),
                      Text(
                        '300',
                        style: TextStyle(fontSize: 30, color: mainco),
                      )
                    ],
                  ),
                ),
              ))
            ],
          )),
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
