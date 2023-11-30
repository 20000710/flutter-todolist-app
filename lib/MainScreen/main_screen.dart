import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 25, bottom: 10),
            child: Column(
              children: const [
                Text(
                  "list",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )
              ],
            )
          )
        ],
      )
    );
  }
}