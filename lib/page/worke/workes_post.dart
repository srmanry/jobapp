import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:worker_s/page/worke/worke_model.dart';

class workes_post extends StatefulWidget {
  const workes_post({super.key});

  @override
  State<workes_post> createState() => _workes_postState();
}

class _workes_postState extends State<workes_post> {
  List<Work_model> Work_list = [];
  Future<List<Work_model>> Posted_work() async {
    final Work_url = Uri.parse("https://jsonplaceholder.typicode.com/comments");
    var Work_res = await http.get(Work_url);
    var Work_body = jsonDecode(Work_res.body);
    for (var data in Work_body) {
      Work_list.add(Work_model.fromJson(data));
    }
    return Work_list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: Posted_work(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: Work_list.length,
                    // itemCount: snapshot.hasData.toString(),
                    itemBuilder: (_, index) {
                      return Card(
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(Work_list[index].name.toString()),
                              subtitle: Text(Work_list[index].body.toString()),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Post: 01/05/2023"),
                                  TextButton(
                                      // style: ElevatedButton.styleFrom(
                                      //     backgroundColor: Colors.green),
                                      onPressed: () {
                                        Get.defaultDialog(
                                            title: "আবেদন করুণ ",
                                            content: Text(
                                                "আবেদন করার জন্য নিচের মাধ্যম গুলো ব্যবহার করুন"),
                                            actions: [
                                              ElevatedButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.mail,
                                                  color: Color.fromARGB(
                                                      255, 212, 38, 212),
                                                ),
                                                label: Text(
                                                  "Gmail",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Color(0xFFF77CCFF)),
                                              ),
                                              ElevatedButton.icon(
                                                onPressed: () {},
                                                icon: Icon(Icons.sms,
                                                    color: Colors.white),
                                                label: Text(
                                                  "SMS",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Color(0xfff53BDA5)),
                                              ),
                                              ElevatedButton.icon(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.call,
                                                  color: Colors.blue[50],
                                                ),
                                                label: Text(
                                                  "Call",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.green),
                                              ),
                                            ]);
                                      },
                                      child: Text("Aplly"))
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    });
              }
              return Center(child: CircularProgressIndicator());
            }));
  }
}


/*
ListView.builder(
        itemCount: ,
        itemBuilder: (_, index) {
        return Card(
          elevation: 10,
          child: ListTile(
            title: Text("ভুট্টা তোলা"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    """ ভুট্টা তোলার জন্য ২ জন লোকের প্রয়োজন\nকেউ আগ্রহী থাকলে যোগায়োগ করুণ\nকেউ আগ্রহী থাকলে যোগায়োগ করুণ  01762817950 """),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.green,
                    ),
                    Text("Dinajpur"),
                    Spacer(),
                    Text("12/41/2025"),
                   
                  ],
                )
              ],
            ),
            /* trailing: SizedBox(
              width: 20,
              child: Row(
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.blueAccent,
                  ),
                  Icon(
                    Icons.call,
                    color: Colors.blueAccent,
                  ),
                ],
              ),
            ),*/
          ),
        );
      }),
*/