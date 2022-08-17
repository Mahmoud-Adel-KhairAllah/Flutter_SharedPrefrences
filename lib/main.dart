import 'package:flutter/material.dart';
import 'package:shared_prefrences/sharedPrefrences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await SPHelper.spHelper.initsharedPreferences();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  late String name;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("shared Preferences"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 50),
                  )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  onSubmitted: (value) {
                    name = value;
                    print(value);
                  },
                  onChanged: (v) {
                    //  print(v);
                  },
                  onEditingComplete: () {},
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: RaisedButton(
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: Text("write on shared Preferences"),
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: RaisedButton(
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: Text("read from shared Preferences"),
                  onPressed: () {},
                ),
              )
            ]),
      ),
    );
  }
}
