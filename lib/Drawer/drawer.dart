import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:worker_s/worke/workes_post.dart';
import 'package:worker_s/Drawer/profile_page.dart';

import '../worke/post_work.dart';

class Drawer_page extends StatefulWidget {
  const Drawer_page({super.key});

  @override
  State<Drawer_page> createState() => _Drawer_pageState();
}

class _Drawer_pageState extends State<Drawer_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.blue[100],
            height: 150,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.asset(
                    "assets/images/d.png",
                    height: 80,
                  ),
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "হপতুপ বাতুম",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                )),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(Profile_page());
            },
            child: ListTile(
              title: Text("প্রোফাইল"),
              trailing: Icon(
                Icons.edit,
                color: Colors.green[700],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(post_work());
            },
            child: ListTile(
              title: Text("কাজ পোস্ট করুণ"),
              trailing: Icon(
                Icons.post_add,
                color: Colors.green[700],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(post_work());
            },
            child: ListTile(
              title: Text("সক্রিয়"),
              trailing: Icon(
                Icons.toggle_on,
                color: Colors.green[700],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(post_work());
            },
            child: ListTile(
              title: Text("ভাষা"),
              trailing: Icon(
                Icons.language,
                color: Colors.green[400],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(Profile_page());
            },
            child: ListTile(
              title: Text("প্রবেশ করুণ"),
              trailing: Icon(
                Icons.login,
                color: Colors.green[700],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(Profile_page());
            },
            child: ListTile(
              title: Text("বাহির হোন"),
              trailing: Icon(
                Icons.logout,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
