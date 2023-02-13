// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shop_app/main.dart';
import 'colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
            color: fontco,
            child: Text(
              'WELCOME',
              style: TextStyle(color: Colors.white),
            )),
        centerTitle: true,
        backgroundColor: mainco,
        elevation: 5,
        // ignore: prefer_const_literals_to_create_immutables
      ),
      body: LoginUI(),
      backgroundColor: backgroundco,
    );
  }

  // ignore: non_constant_identifier_names
  Widget LoginUI() {
    return Stack(
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: 55, color: mainco, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(left: 70, right: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(40),
                  shadowColor: fontco,
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                        hintText: "User Name",
                        icon: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(Icons.perm_identity, color: mainco),
                        )),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: "Vazir", fontSize: 20),
                    controller: usernameController,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(40),
                  shadowColor: fontco,
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                        hintText: "Password",
                        icon: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.lock_outline,
                            color: mainco,
                          ),
                        )),
                    obscureText: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: "Vazir", fontSize: 20),
                    controller: passwordController,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Material(
                    elevation: 20,
                    borderRadius: BorderRadius.circular(40),
                    color: mainco,
                    child: InkWell(
                      onTap: () {
                        //sendLoginRequest(context: context, username: usernameController.text, password: passwordController.text);
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Store()));
                      },
                      child: Container(
                        height: 70,
                        child: Center(
                          child: Text(
                            "Enter",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
