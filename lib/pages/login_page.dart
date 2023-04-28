import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.green.shade900,
              Colors.green.shade500,
              Colors.green.shade400,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 46,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Welcome Back",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffDDDDDD),
                                blurRadius: 6.0,
                                spreadRadius: 2,
                                offset: Offset(0.0, 0.0)),
                          ]),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Email",
                              contentPadding:
                                  EdgeInsets.only(left: 16, bottom: 16),
                              hintStyle: TextStyle(color: Colors.grey),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade300)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade300)),
                              disabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade300)),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Password",
                              contentPadding: EdgeInsets.only(
                                left: 16,
                              ),
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 60),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            backgroundColor: Colors.green),
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Login with SNS",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 16),
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  backgroundColor: Colors.blue),
                              onPressed: () {},
                              child: Text(
                                "Facebook",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 16),
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  backgroundColor: Colors.black),
                              onPressed: () {},
                              child: Text(
                                "Github",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
