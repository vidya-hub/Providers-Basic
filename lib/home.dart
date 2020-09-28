import 'package:flutter/material.dart';
import 'package:providers/first.dart';

class HomeScree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: GestureDetector(
          child: Text("Data Provider"),
          onTap: () {
            print("vvv");
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => NextScreen()));
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              print("vvv");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NextScreen()));
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return NextScreen();
              // }));
            },
          )
        ],
      ),
    );
  }
}
