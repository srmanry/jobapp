import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Splash_screeb extends StatefulWidget {
  const Splash_screeb({super.key});

  @override
  State<Splash_screeb> createState() => _Splash_screebState();
}

class _Splash_screebState extends State<Splash_screeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text("Splash Screen"),
          )
        ],
      ),
    );
  }
}
