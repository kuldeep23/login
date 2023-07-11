import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignupPage extends StatelessWidget {
  final TextEditingController userController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();
  final TextEditingController mobController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: MediaQuery.of(context).size.height / 1.6,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    FadeInDown(
                        delay: Duration(milliseconds: 300),
                        duration: Duration(milliseconds: 1500),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    FadeInDown(
                        delay: Duration(milliseconds: 300),
                        duration: Duration(milliseconds: 1500),
                        child: Text(
                          "Fill all the Mandatory details",
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[700]),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: <Widget>[
                    //Username
                    FadeInUp(
                      delay: Duration(milliseconds: 300),
                      duration: Duration(milliseconds: 1500),
                      child: TextField(
                        controller: userController,
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
                    //Password
                    FadeInUp(
                      delay: Duration(milliseconds: 400),
                      duration: Duration(milliseconds: 1500),
                      child: TextField(
                        controller: pwdController,
                        // obscureText: passwordVisible,
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
                    SizedBox(
                      height: 25,
                    ),
                    //Mobile
                    FadeInUp(
                      delay: Duration(milliseconds: 400),
                      duration: Duration(milliseconds: 1500),
                      child: TextField(
                        controller: mobController,
                        maxLength: 10,
                        keyboardType: TextInputType.phone,
                        // obscureText: passwordVisible,
                        decoration: InputDecoration(
                            labelText: "Mobile No",
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            prefixIcon: Icon(
                              Iconsax.call,
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
                    SizedBox(
                      height: 5,
                    ),
                    //Address
                    FadeInUp(
                      delay: Duration(milliseconds: 400),
                      duration: Duration(milliseconds: 1500),
                      child: TextField(
                        controller: addressController,
                        textCapitalization: TextCapitalization.words,
                        keyboardType: TextInputType.visiblePassword,
                        // obscureText: passwordVisible,
                        decoration: InputDecoration(
                            labelText: "Address",
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            prefixIcon: Icon(
                              Iconsax.home,
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
                SizedBox(
                  height: 15,
                ),
                //SignUpButton
                FadeInUp(
                    delay: Duration(milliseconds: 300),
                    duration: Duration(milliseconds: 1500),
                    child: Container(
                      padding: EdgeInsets.only(top: 3, left: 3),
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
                        onPressed: () {
                          print(userController.text);
                          print(pwdController.text);
                          print(mobController.text);
                          print(addressController.text);
                        },
                        color: Color(0xffFF6663),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ),
                    )),
                FadeInUp(
                    delay: Duration(milliseconds: 300),
                    duration: Duration(milliseconds: 1500),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Already have an account?"),
                        Text(
                          " Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
