import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:worker_s/page/group/group_model.dart';
import 'package:http/http.dart' as http;

class Gorup_page extends StatefulWidget {
  const Gorup_page({super.key});

  @override
  State<Gorup_page> createState() => _Gorup_pageState();
}

class _Gorup_pageState extends State<Gorup_page> {
  List<Group_model> Group_lsit = [];
  Future<List<Group_model>> Get_group() async {
    final group_url = Uri.parse("https://reqres.in/api/users?page=2");
    final group_body = await http.get(group_url);
    var group_res = jsonDecode(group_body.body);

    for (var g_data in group_res) {
      Group_lsit.add(Group_model.fromJson(g_data));
    }

    return Group_lsit;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 2, crossAxisSpacing: 3),
            itemBuilder: (_, context) {
              return Container(
                color: Colors.blue[100],
                height: 110,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        "assets/images/g.jpeg",
                        height: 80,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Group Name"),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'more',
                        style: TextStyle(color: Colors.purpleAccent),
                      ))
                ]),
              );
            }));
  }
}
