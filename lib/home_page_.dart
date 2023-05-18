import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:worker_s/first_screen.dart';
import 'package:worker_s/group/group_page.dart';
import 'package:worker_s/worke/workes_post.dart';

import 'Drawer/drawer.dart';
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
        drawer: Drawer(backgroundColor: Colors.blue[50], child: Drawer_page()),
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: Text("Worke's"),
          actions: [],
          bottom: TabBar(
              labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              indicatorColor: Colors.white,
              labelColor: Colors.blue[50],
              unselectedLabelColor: Colors.white,
              indicatorWeight: 3,
              tabs: [
                Tab(
                  //height: 80,
                  icon: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  text: "হোম",
                ),
                Tab(
                  //height: 80,
                  icon: Icon(
                    Icons.person,
                    size: 30,
                  ),
                  text: "লোক",
                ),
                Tab(
                  //height: 80,
                  icon: Icon(
                    Icons.groups_sharp,
                    size: 30,
                  ),
                  text: "দল",
                ),
                Tab(
                  //height: 80,
                  icon: Icon(
                    Icons.post_add,
                    size: 30,
                  ),
                  text: "কাজ",
                ),
              ]),
        ),
        body: TabBarView(children: [
          First_screen(),
          One_workers(),
          Gorup_page(),
          workes_post(),
        ]),
      ),
    );
  }
}
