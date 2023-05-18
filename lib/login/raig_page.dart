import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Ragi_page extends StatefulWidget {
  const Ragi_page({super.key});

  @override
  State<Ragi_page> createState() => _Ragi_pageState();
}

class _Ragi_pageState extends State<Ragi_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/images/d.png",
                    height: 110,
                  )),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "নাম লিখুন "),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "জন্ম তরিখ"),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "মোবাইল নম্বর"),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "জিমেইল আইডি"),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "জেলা"),
              ),

              SizedBox(
                height: 10,
              ),
              TextFormField(
                maxLines: 4,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "বিস্তারিত ঠিকানা"),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "কাজের অভিজ্ঞতা"),
              ),
              SizedBox(
                height: 10,
              ),
              //    TextField(
              //   decoration: InputDecoration(
              //       border: OutlineInputBorder(
              //           borderSide: BorderSide(width: 1, color: Colors.blue),
              //           borderRadius: BorderRadius.circular(10)),
              //       hintText: "বিস্তারিত ঠিকানা"),
              // ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("সেভ করুন"))
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}

/*

TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "নাম লিখুন "),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "জন্ম তরিখ"),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "মোবাইল নম্বর"),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "জিমেইল আইডি"),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.blue),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "জেলা"),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              TextFormField(
                maxLines: 4,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "বিস্তারিত ঠিকানা"),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "কাজের অভিজ্ঞতা"),
              ),
              SizedBox(
                height: 10,
              ),
              //    TextField(
              //   decoration: InputDecoration(
              //       border: OutlineInputBorder(
              //           borderSide: BorderSide(width: 1, color: Colors.blue),
              //           borderRadius: BorderRadius.circular(10)),
              //       hintText: "বিস্তারিত ঠিকানা"),
              // ),
              SizedBox(
                height: 10,
              ),
 */