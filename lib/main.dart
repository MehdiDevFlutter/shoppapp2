// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'Product.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/colors.dart';
import 'LoginPage.dart';
import 'package:http/http.dart';
//import 'package:http/http.dart' as http;
import 'Cart_Screen.dart';

void main() {
  runApp(const MainMaterial());
}

class MainMaterial extends StatelessWidget {
  const MainMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  final List<Product> _items = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 243, 233),
      body: Column(
        children: [
          Container(
            height: 60,
            color: backgroundco,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Image.asset(
                            'image/Mobile.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello',
                            style: TextStyle(
                                color: Color.fromARGB(135, 58, 57, 57),
                                fontSize: 12),
                          ),
                          Text(
                            'Darlena',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )
                        ],
                      )
                    ],
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu))
                ],
              ),
            ),
          ),
          Container(
            height: 60,
            color: backgroundco,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(40),
                        shadowColor: Colors.white,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.fromLTRB(0, 20, 10, 20),
                              hintText: "Search Product",
                              icon: Padding(
                                padding: EdgeInsets.all(10),
                                child:
                                    Icon(Icons.search, color: Colors.black54),
                              )),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromARGB(221, 66, 66, 66),
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 3, 12, 143)),
                        fixedSize: MaterialStatePropertyAll(Size(50, 50))),
                    label: Text('', style: TextStyle(color: Colors.white)),
                    icon: Center(
                      child: Icon(
                        Icons.menu_open,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 60,
            color: backgroundco,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.chalet,
                      size: 20,
                    ),
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 3, 12, 143)),
                        fixedSize: MaterialStatePropertyAll(Size(80, 20))),
                    label: Text('Sony',
                        style: TextStyle(color: Colors.white, fontSize: 10)),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.chalet,
                      size: 20,
                      color: Colors.black,
                    ),
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        fixedSize: MaterialStatePropertyAll(Size(80, 20))),
                    label: Text('SAM',
                        style: TextStyle(color: Colors.black, fontSize: 10)),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.chalet,
                      size: 20,
                      color: Colors.black,
                    ),
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        fixedSize: MaterialStatePropertyAll(Size(80, 20))),
                    label: Text('Xiaomi',
                        style: TextStyle(color: Colors.black, fontSize: 10)),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.chalet,
                      size: 20,
                      color: Colors.black,
                    ),
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        fixedSize: MaterialStatePropertyAll(Size(80, 20))),
                    label: Text('Sony',
                        style: TextStyle(color: Colors.black, fontSize: 10)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 60,
            color: backgroundco,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'Find result',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 25),
                        children: [
                          TextSpan(
                            text: '  (425Items)',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          )
                        ]),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Text(
                    '(See All)',
                    style: TextStyle(fontSize: 12, color: fontco),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: SizedBox(
                  height: 400,
                  child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: List.generate(_items.length, (int position) {
                        return generateItems(_items[position], context);
                      })),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future fetchItems() async {
    var url = Uri.parse('https://fakestoreapi.com/products');
    Response response = await get(url);
    //print(utf8.decode(response.bodyBytes));
    setState(() {
      var productJson = json.decode(utf8.decode(response.bodyBytes));
      for (var i in productJson) {
        var productItem = Product(i['id'], i['title'], i['price'],
            i['description'], i['category'], i['image']);
        _items.add(productItem);
      }
    });
  }
}

Card generateItems(Product product, context) {
  return Card(
    elevation: 5,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50))),
    child: InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Cart_Screen()));
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: double.infinity,
                height: 90,
                child: Image.network(product.image)),
            const SizedBox(
              height: 15,
            ),
            Text(
              product.title,
              style: TextStyle(
                fontFamily: "BTitrBd",
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              product.price.toString(),
              style: TextStyle(
                fontFamily: "BTitrBd",
                fontSize: 17,
                color: Color.fromARGB(255, 26, 23, 245),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
