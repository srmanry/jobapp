import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:marquee/marquee.dart';
import 'package:worker_s/style.dart';
import 'package:worker_s/user/user_home_page.dart';
import 'package:worker_s/worke/workes_post.dart';

class First_screen extends StatefulWidget {
  const First_screen({super.key});

  @override
  State<First_screen> createState() => _Kormo_homeState();
}

class _Kormo_homeState extends State<First_screen> {
  List workers_name = [
    "কৃষি",
    "শিক্ষা",
    "কম্পিউটার",
    "স্বাস্থ্য",
    "বিদ্যুৎ",
    "পরিবহন",
    "রাজমিস্ত্রি",
    "কাঠমিস্ত্রি",
    "টাইলসমিস্ত্রি",
    "পরিচ্ছন্ন",
    "বাবুর্চি",
    "মেরামত",
  ];
  List oicob_list = [
    "assets/icon/agr.png",
    "assets/icon/edu.png",
    "assets/icon/com.png",
    "assets/icon/he.png",
    "assets/icon/elect.png",
    "assets/icon/tasn.png",
    "assets/icon/house.png",
    "assets/icon/catmi.png",
    "assets/icon/tise.png",
    "assets/icon/cle.png",
    "assets/icon/babuci.png",
    "assets/icon/srvic.png",
  ];
  List division_list = [
    "রংপুর",
    "পঞ্চগড়",
    "ঠাকুরগাঁও",
    "দিনাজপুর",
    "নীলফামারী",
    "লালমনিরহাট",
    "গাইবান্ধা",
    "জয়পুরহাট",
    "কুড়িগ্রাম",
    "জয়পুরহাট",
    "সিলেট",
    "সুনামগঞ্জ",
    "সিরাজগঞ্জ",
    "শেরপুর",
    "নাটোর",
    "রাজশাহী",
    "পাবনা",
    "কুমিল্লা",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                // color: Color.fromARGB(255, 172, 206, 207),
                color: Color.fromARGB(255, 235, 241, 243)),
            height: 80,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
              child: Column(
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.circular(10)),
                  //     height: 40,
                  //     child: TextField(
                  //       decoration: InputDecoration(
                  //           border: OutlineInputBorder(
                  //               // borderSide: BorderSide(color: Colors.black),
                  //               borderRadius:
                  //                   BorderRadius.all(Radius.circular(10))),
                  //           suffixIcon: Icon(
                  //             Icons.search,
                  //             color: Colors.black,
                  //           ),
                  //           hintText: "প্রয়োজনীয় কাজের লোক খুঁজুন"),
                  //     ),
                  //   ),
                  // ),

                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text(
                  //         "যুক্তহোন",
                  //         style: TextStyle(
                  //             color: Color.fromARGB(255, 3, 189, 99),
                  //             fontSize: 16,
                  //             fontWeight: FontWeight.w500),
                  //       ),
                  //       Text(
                  //         "মন্তব্য",
                  //         style: TextStyle(
                  //             color: Colors.indigo,
                  //             fontSize: 16,
                  //             fontWeight: FontWeight.w500),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           // Get.to(Other());
                  //           Get.to(workes_post());
                  //           // Get.to(workes_post());
                  //         },
                  //         child: Text(
                  //           "কাজের পোস্ট",
                  //           style: TextStyle(
                  //               color: Colors.indigo,
                  //               fontSize: 16,
                  //               fontWeight: FontWeight.w500),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Container(
                    height: 30,
                    child: Marquee(
                        text:
                            "কাজের মধ্যে আত্মতৃপ্তি কাজের মধ্যে পরিপূর্ণতা আনে \n",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.purpleAccent),
                        blankSpace: 20.0,
                        //startPadding: 10.0,
                        accelerationCurve: Curves.linear),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),

          Container(
              height: 600,
              color: Colors.white,
              //color: Color.fromARGB(255, 226, 243, 240),
              child: GridView.builder(
                  itemCount: workers_name.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(One_workers());
                      },
                      child: Card(
                        elevation: 0,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                oicob_list[index],
                                height: 70,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                workers_name[index],
                                style: formal_text,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  })),
          //................................................
          Container(
            height: 10,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}

//.............................................
division() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffffc1dfc4), Color(0xffffd9ded8)]),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: Colors.white)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('রাজশাহী', style: body_text),
            )),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffffc1dfc4), Color(0xffffd9ded8)]),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: Colors.white)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'রংপুর',
                style: body_text,
              ),
            )),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffffc1dfc4), Color(0xffffd9ded8)]),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: Colors.white)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('সিলেট', style: body_text),
            )),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffffc1dfc4), Color(0xffffd9ded8)]),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: Colors.white)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('চট্টগ্রাম', style: body_text),
            )),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffffc1dfc4), Color(0xffffd9ded8)]),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: Colors.white)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('ঢাকা', style: body_text),
            )),
      ),
    ],
  );
}

division_() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffffc1dfc4), Color(0xffffd9ded8)]),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: Colors.white)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('বরিশাল', style: body_text),
            )),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffffc1dfc4), Color(0xffffd9ded8)]),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: Colors.white)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('কুমিল্লা', style: body_text),
            )),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffffc1dfc4), Color(0xffffd9ded8)]),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: Colors.white)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('ময়মনসিংহ', style: body_text),
            )),
      ),
    ],
  );
}


/*
 GridView.builder(
                itemCount: oicob_list.length,
                itemBuilder: (_, index) {
                  // return Row(
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.all(5.0),
                  //       child: Card(
                  //         elevation: 50,
                  //         shadowColor: Colors.black,
                  //         child: Container(
                  //           height: 80,
                  //           width: 80,
                  //           child: Column(
                  //             //crossAxisAlignment: CrossAxisAlignment.center,
                  //             children: [
                  //               Padding(
                  //                   padding: const EdgeInsets.only(
                  //                       top: 1.0, bottom: 0.0),
                  //                   child: Image.asset(
                  //                     oicob_list[index],
                  //                     height: 60,
                  //                   )),
                  //               //  Icon(Icons.chevron_right),
                  //               Expanded(
                  //                   child: Center(
                  //                 child: Text(worker_name_2[index],
                  //                     style: body_text),
                  //               )),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 0,
                  //     ),
                  //     // Padding(
                  //     //   padding: const EdgeInsets.all(0.0),
                  //     //   child: InkWell(
                  //     //     onTap: () {
                  //     //       Get.to(One_worker());
                  //     //     },
                  //     //     child: Card(
                  //     //       elevation: 10,
                  //     //       child: Container(
                  //     //         // decoration: BoxDecoration(
                  //     //         //     color: Colors.white,
                  //     //         //     borderRadius: BorderRadius.circular(10),
                  //     //         //     border:
                  //     //         //         Border.all(width: 1, color: Colors.black)),
                  //     //         height: 80,
                  //     //         width: 80,
                  //     //         child: Row(
                  //     //           children: [
                  //     //             //Icon(Icons.chevron_right),
                  //     //             Expanded(
                  //     //                 child: Center(
                  //     //                     child: Text(worker_name_2[index],
                  //     //                         style: body_text))),
                  //     //           ],
                  //     //         ),
                  //     //       ),
                  //     //     ),
                  //     //   ),
                  //     // ),
                  //     // SizedBox(
                  //     //   width: 5,
                  //     // ),
                  //     // Padding(
                  //     //   padding: const EdgeInsets.all(0.0),
                  //     //   child: Card(
                  //     //     elevation: 10,
                  //     //     child: Container(
                  //     //       decoration: BoxDecoration(
                  //     //         borderRadius: BorderRadius.circular(2),
                  //     //         // gradient: LinearGradient(
                  //     //         //     begin: Alignment.center,
                  //     //         //     end: Alignment.bottomCenter,
                  //     //         //     colors: [
                  //     //         //       Color.fromARGB(255, 100, 219, 112),
                  //     //         //       Color.fromARGB(255, 164, 221, 153)
                  //     //         //     ]),
                  //     //       ),
                  //     //       height: 80,
                  //     //       width: 80,
                  //     //       child: Row(
                  //     //         children: [
                  //     //           // Icon(Icons.chevron_right),
                  //     //           Expanded(
                  //     //               child: Center(
                  //     //                   child: Text(worker_name_2[index],
                  //     //                       style: body_text))),
                  //     //         ],
                  //     //       ),
                  //     //     ),
                  //     //   ),
                  //     // ),
                  //     // SizedBox(
                  //     //   width: 5,
                  //     // ),
                  //     Padding(
                  //       padding: const EdgeInsets.all(0.0),
                  //       child: Card(
                  //         elevation: 10,
                  //         child: Container(
                  //           // decoration: BoxDecoration(
                  //           //   borderRadius: BorderRadius.circular(2),
                  //           //   gradient: LinearGradient(
                  //           //       begin: Alignment.center,
                  //           //       end: Alignment.bottomCenter,
                  //           //       colors: [
                  //           //         Color(0xffffc1dfc4),
                  //           //         Color(0xffffd9ded8)
                  //           //       ]),
                  //           // ),
                  //           height: 80,
                  //           width: 90,
                  //           child: Row(
                  //             children: [
                  //               // Icon(Icons.chevron_right),
                  //               Expanded(
                  //                   child: Center(
                  //                       child: Text(worker_name_2[index],
                  //                           style: body_text))),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       height: 20,
                  //     )
                  //   ],
                  // );
                }),
 */