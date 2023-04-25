import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:worker_s/page/group/group_page.dart';
import 'package:worker_s/page/worke/workes_post.dart';

import '../home_page.dart';
import 'user/user_home_page.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.blue[50],
          child: ListView(
            children: [Text("Suman Roy"), Text("123sumango@gamil.com")],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: Text("Worke's"),
          actions: [],
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.person),
              text: "Person",
            ),
            Tab(
              icon: Icon(Icons.group),
              text: "Group",
            ),
            Tab(
              icon: Icon(Icons.post_add),
              text: "Worke",
            ),
          ]),
        ),
        body: TabBarView(children: [
          Kormo_home(),
          One_workers(),
          Gorup_page(),
          workes_post(),
        ]),
      ),
    );
  }
}
