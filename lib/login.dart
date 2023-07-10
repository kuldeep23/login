import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool passwordVisible = false;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      FadeInUp(
                          delay: Duration(milliseconds: 100),
                          duration: Duration(milliseconds: 1500),
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      FadeInUp(
                          delay: Duration(milliseconds: 200),
                          duration: Duration(milliseconds: 1500),
                          child: Text(
                            "Login to your account",
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[700]),
                          )),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: <Widget>[
                        FadeInUp(
                          delay: Duration(milliseconds: 300),
                          duration: Duration(milliseconds: 1500),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Username",
                                labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                                prefixIcon: Icon(
                                  Iconsax.user,
                                  color: Colors.black,
                                  size: 18,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade200, width: 2),
                                    borderRadius: BorderRadius.circular(10)),
                                floatingLabelStyle: TextStyle(
                                    color: Color(0xffFF6663), fontSize: 18),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffFF6663), width: 1.5),
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        FadeInUp(
                          delay: Duration(milliseconds: 400),
                          duration: Duration(milliseconds: 1500),
                          child: TextField(
                            obscureText: passwordVisible,
                            decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                                prefixIcon: Icon(
                                  Iconsax.key,
                                  color: Colors.black,
                                  size: 18,
                                ),
                                suffixIcon: Icon(
                                  Iconsax.eye,
                                  color: Colors.black,
                                  size: 18,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade300, width: 2),
                                    borderRadius: BorderRadius.circular(10)),
                                floatingLabelStyle: TextStyle(
                                    color: Color(0xffFF6663), fontSize: 18),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffFF6663), width: 1.5),
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  FadeInUp(
                      delay: Duration(milliseconds: 500),
                      duration: Duration(milliseconds: 1500),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          padding: EdgeInsets.only(top: 2, left: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                              )),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () {},
                            color: Color(0xffFF6663),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      )),
                  FadeInUp(
                      delay: Duration(milliseconds: 600),
                      duration: Duration(milliseconds: 1500),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Don't have an account? "),
                          Text(
                            "Sign up",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            FadeInUp(
                delay: Duration(milliseconds: 700),
                duration: Duration(milliseconds: 1500),
                child: Container(
                  child: SizedBox(
                    height: 250,
                    child: OverflowBox(
                      child: Lottie.network(
                          'https://assets5.lottiefiles.com/packages/lf20_KU3FGB47d6.json'),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
