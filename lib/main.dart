import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/signup.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  FadeInDown(
                      delay: const Duration(milliseconds: 100),
                      duration: const Duration(milliseconds: 1500),
                      child: const Text(
                        "Welcome to SECURE GATES",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  FadeInDown(
                      delay: const Duration(milliseconds: 100),
                      duration: const Duration(milliseconds: 1500),
                      child: Text(
                        "Your Society, Our Expertise",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey[700], fontSize: 17),
                      )),
                ],
              ),
              FadeInDown(
                  delay: const Duration(milliseconds: 300),
                  duration: const Duration(milliseconds: 1500),
                  child: Container(
                    child: SizedBox(
                      height: 300,
                      child: OverflowBox(
                        child: Lottie.network(
                            'https://assets5.lottiefiles.com/packages/lf20_KU3FGB47d6.json'),
                      ),
                    ),
                  )),
              Column(
                children: <Widget>[
                  FadeInDown(
                      delay: const Duration(milliseconds: 300),
                      duration: const Duration(milliseconds: 1500),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeInUp(
                      delay: const Duration(milliseconds: 300),
                      duration: const Duration(milliseconds: 1500),
                      child: Container(
                        padding: const EdgeInsets.only(top: 3, left: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: const Border(
                              bottom: BorderSide(color: Colors.black),
                              top: BorderSide(color: Colors.black),
                              left: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black),
                            )),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupPage()));
                          },
                          color: const Color(0xffFF6663),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
