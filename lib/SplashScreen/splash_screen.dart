import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todolist_app/MainScreen/main_screen.dart';
import 'package:todolist_app/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // create start timer
  startTimer(){
    Timer(const Duration(seconds: 2), () async {
      Navigator.push(context, MaterialPageRoute(builder: (c) => MainScreen()));
    });
  }

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.tealAccent
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/to-do-list.png"),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "Set Your TODO List in One App",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 3,
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}