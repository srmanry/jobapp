import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:http/http.dart' as http;
import 'package:worker_s/Drawer/profile_page.dart';
import 'package:worker_s/user/user_model.dart';

import '../login/raig_page.dart';

class One_workers extends StatefulWidget {
  const One_workers({super.key});

  @override
  State<One_workers> createState() => _One_workersState();
}

class _One_workersState extends State<One_workers> {
  List<Worker_model> Cmt_list = [];
  Future<List<Worker_model>> Get_workers() async {
    final User_url = Uri.parse("https://jsonplaceholder.typicode.com/users");
    final reponse_Workers = await http.get(User_url);
    var rep_body = jsonDecode(reponse_Workers.body);
    for (var data in rep_body) {
      Cmt_list.add(Worker_model.fromJson(data));
    }
    print(reponse_Workers.body);
    print(Cmt_list[0].email);
    print(reponse_Workers.statusCode);
    return Cmt_list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Worker's",
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.green,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Get.to(Ragi_page());
              },
              child: Icon(
                Icons.add,
                color: Colors.green,
              ),
            ),
          )
        ],
      ),
      body: FutureBuilder(
          future: Get_workers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: Cmt_list.length,
                  itemBuilder: (_, index) {
                    return Card(
                      elevation: 0,
                      child: Container(
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            border: Border.all(
                                                width: 1.5,
                                                color: Colors.black)),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50)),
                                            child: Image.asset(
                                              "assets/images/d.png",
                                              height: 40,
                                            )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, top: 25.0),
                                        child: Text(
                                          Cmt_list[index].name.toString(),
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25.0),
                                    child: InkWell(
                                        onTap: () {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return Dialog(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    20))),
                                                    height: 600,
                                                    child: Profile_page(),
                                                  ),
                                                );
                                              });
                                        },
                                        child: Text(
                                          "View",
                                          style:
                                              TextStyle(color: Colors.purple),
                                        )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );

                    // return Card(
                    //   child: Text("jdjajfl"),
                    //   child: ListView(
                    //     children: [
                    //       Text(snapshot.data[index]["name"],
                    //           style: TextStyle(color: Colors.green)),
                    //       Row(
                    //         children: [
                    //           IconButton(
                    //               onPressed: () {},
                    //               icon: Icon(
                    //                 Icons.share_location_rounded,
                    //                 color: Colors.green[700],
                    //               )),
                    //           Text(snapshot.data[index]["address"]["city"],
                    //               style: TextStyle(color: Colors.amber)),
                    //           InkWell(
                    //             onTap: () {
                    //               Get.to((Profile_page()));
                    //             },
                    //             child: Text(
                    //               "view",
                    //               style: TextStyle(color: Colors.purple),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    //   );
                  });
            }
            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}



/* Card(
                        elevation: 10,
                        child: ListTile(
                          title: Text(snapshot.data[index]["name"],
                              style: TextStyle(color: Colors.green)),
                          subtitle: Text(
                              snapshot.data[index]["address"]["city"],
                              style: TextStyle(color: Colors.amber)),
                        ),
                      );*/
/*

Padding(
        padding: const EdgeInsets.all(5.0),
        child: GridView.builder(
            itemCount: 10,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(3.0),
                child: InkWell(
                  onTap: () {
                    Get.to(about_page());
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(width: 1, color: Colors.green)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(
                              2,
                            )),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(2),
                                    border: Border.all(
                                        width: 1, color: Colors.green)),
                                child: Image.asset(
                                  "assets/images/ddk.jpg",
                                  height: 60,
                                ),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Suman Roy"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Apps devloper,"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text("Thakurgaon"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 252, 250, 245),
                                border:
                                    Border.all(width: 1, color: Colors.green),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //Icon(
                                //   Icons.star,
                                //   color: Colors.red,
                                // ),
                                // Icon(Icons.star),
                                // Icon(Icons.star),
                                Icon(Icons.mail),
                                Container(
                                    color: Colors.green,
                                    child: Icon(Icons.phone))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
 */
