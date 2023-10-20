import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:iconsax/iconsax.dart';

class Stackcode extends StatefulWidget {
  @override
  State<Stackcode> createState() => _StackcodeState();
}

class _StackcodeState extends State<Stackcode> {
  List data = [];
  String? dropdownValue;
  String defaultValue = "Hello";

  getData() async {
    final res = await http.get(
        Uri.parse("https://gatesadmin.000webhostapp.com/society_details.php"));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Stack(
                        alignment: Alignment.topLeft,
                        clipBehavior: Clip.none,
                        children: <Widget>[
                          Material(
                            shadowColor: Colors.grey,
                            elevation: 20,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: const BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                          Positioned(
                              top: -20,
                              left: 0,
                              child: Container(
                                alignment: Alignment.center,
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        color: Colors.red, width: 2)),
                                child: const Text(
                                  "1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ))
                        ]),
                  ),
                  Center(
                    child: Stack(
                        alignment: Alignment.topLeft,
                        clipBehavior: Clip.none,
                        children: <Widget>[
                          Material(
                            elevation: 10,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: const BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                          Positioned(
                              top: -20,
                              left: 0,
                              child: Container(
                                alignment: Alignment.center,
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        color: Colors.red, width: 2)),
                                child: const Text(
                                  "1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ))
                        ]),
                  ),
                  Center(
                    child: Stack(
                        alignment: Alignment.topLeft,
                        clipBehavior: Clip.none,
                        children: <Widget>[
                          Material(
                            elevation: 10,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: const BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                          Positioned(
                              top: -20,
                              left: 0,
                              child: Container(
                                alignment: Alignment.center,
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        color: Colors.red, width: 2)),
                                child: const Text(
                                  "1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ))
                        ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Stack(
                        alignment: Alignment.topLeft,
                        clipBehavior: Clip.none,
                        children: <Widget>[
                          Material(
                            elevation: 10,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: const BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                          Positioned(
                              top: -20,
                              left: 0,
                              child: Container(
                                alignment: Alignment.center,
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        color: Colors.red, width: 2)),
                                child: const Text(
                                  "1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ))
                        ]),
                  ),
                  Center(
                    child: Stack(
                        alignment: Alignment.topLeft,
                        clipBehavior: Clip.none,
                        children: <Widget>[
                          Material(
                            elevation: 10,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: const BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                          Positioned(
                              top: -20,
                              left: 0,
                              child: Container(
                                alignment: Alignment.center,
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        color: Colors.red, width: 2)),
                                child: const Text(
                                  "1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ))
                        ]),
                  ),
                  Center(
                    child: Stack(
                        alignment: Alignment.topLeft,
                        clipBehavior: Clip.none,
                        children: <Widget>[
                          Material(
                            elevation: 10,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: const BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                          ),
                          Positioned(
                              top: -20,
                              left: 0,
                              child: Container(
                                alignment: Alignment.center,
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        color: Colors.red, width: 2)),
                                child: const Text(
                                  "1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ))
                        ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InputDecorator(
                  decoration: InputDecoration(
                      labelText: "Select Society",
                      labelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      prefixIcon: const Icon(
                        Iconsax.home,
                        color: Colors.black,
                        size: 18,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey.shade200, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      floatingLabelStyle: const TextStyle(
                          color: Color(0xffFF6663), fontSize: 18),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffFF6663), width: 1.5),
                          borderRadius: BorderRadius.circular(10))),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        value: dropdownValue == null ? null : dropdownValue,
                        elevation: 8,
                        isDense: true,
                        items: data.map((e) {
                          return DropdownMenuItem<String>(
                            child: Text(e["soc_name"]),
                            value: e["soc_name"],
                          );
                        }).toList(),
                        onChanged: (value) {
                          //_valud = value as int;
                          print(value);
                          setState(() {
                            dropdownValue = value.toString()!;
                          });
                        }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
