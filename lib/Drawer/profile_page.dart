import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class Profile_page extends StatelessWidget {
  const Profile_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromARGB(255, 250, 250, 248),
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: Text("Worker's"),
        // ),
        // drawer: Drawer(
        //   backgroundColor: Colors.blue[50],
        //   child: ListView(
        //     children: [Text("Suman Roy"), Text("123sumango@gamil.com")],
        //   ),
        // ),
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 193, 224, 194),
                    Color.fromARGB(255, 231, 227, 227),
                    Color.fromARGB(255, 239, 240, 231),
                    Color.fromARGB(255, 232, 236, 234),
                  ])),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.green),
                      borderRadius: BorderRadius.circular(80),
                    ),
                    height: 100,
                    width: 100,
                    child: CircleAvatar(
                      radius: 80,
                      //backgroundColor: Colors.amber,
                      backgroundImage: AssetImage("assets/images/ddk.jpg"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: Text(
                    "Suman Roy",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mail,
                          color: Colors.black,
                        ),
                        label: Text(
                          "Gmail",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.sms, color: Colors.black),
                        label: Text(
                          "SMS",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.call,
                          color: Colors.black,
                        ),
                        label: Text(
                          "Call",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "পরিচিতি",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 153, 22)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                """হ্যালো,শুভ অপরাহ্ন "আমি বিদ্যা আমি BSC.কম্পিউটার সায়েন্সে স্নাতক করেছি।"একটি প্রযুক্তিগত পটভূমিতে এসে আমি ডেটা বিশ্লেষণে আগ্রহী ছিলাম,"তাই আমি ইমারটিকাস, পুনে থেকে পিজিএ অনুসরণ করেছি।"""),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0),
            child: Text(
              "দক্ষতা",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            height: 2,
            color: Colors.purple,
            // color: Color.fromARGB(255, 168, 165, 165),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 300,
            // color: Colors.amber,
            child: ListView(
              children: [
                Text(
                  "> Ms.word,",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  "> Ms.powerp point,",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  "> Video Editing,",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  "> Ms.powerp point,",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
