import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:worker_s/Drawer/profile_page.dart';
import 'package:worker_s/login/ragister_page.dart';
import 'package:worker_s/login/raig_page.dart';

import '../first_screen.dart';
import '../home_page_.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  final _formkey = GlobalKey<FormState>();
  var number = TextEditingController();
  var password = TextEditingController();

//................. text clear
  Textfile_clear() {
    number.clear();
    password.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: ListView(
          children: [
            // SizedBox(
            //   height: 150,
            // ),
            Image.asset(
              "assets/images/labor.png",
              height: 250,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "আপনাকে স্বাগতম ",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber[900]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: number,
                maxLength: 11,
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null) {
                    return "Emtey";
                  } else if (value!.length < 11) {
                    return "must be 11 number";
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "মোবাইল নম্বর "),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: password,
                // keyboardType: TextInputType.,
                maxLength: 8,
                validator: (value) {
                  if (value == null) {
                    return "Emtey";
                  } else if (value!.length < 11) {
                    return "must be 11 number";
                  }
                },
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "পাসওর্য়াড "),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Get.to(Home_page());

                        // if (_formkey.currentState!.validate()) {
                        //   return Navigator.push(context, route)
                        // }
                      },
                      child: Text(
                        "প্রবেশ করুণ",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.green),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        Get.to(Ragi_page());
                      },
                      child: Text(
                        "একাউন্ট খুলন",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue[700]),
                      )),
                  InkWell(
                    onTap: () {
                      Get.to(Rag_page());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "পাসওর্য়াড ভুলে গেছি",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.red),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
