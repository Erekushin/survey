import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
// 1. binary tree

  var nodes = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30
  ];
  var binaryTree = [];
  findDiameter() {
    int geometerElement = 1;
    for (int a = 1; a < 5; a++) {
      sortNodes(geometerElement);
      print(nodes);
      geometerElement = geometerElement * 2;
    }
  }

  sortNodes(int element) {
    List eachLevel = [];
    for (int i = 0; i < element; i++) {
      eachLevel.add(nodes[i]);
    }
    for (int a = 0; a < element; a++) {
      print('deleting item');
      print('deleting item index $a');
      print(nodes[a]);
      nodes.removeAt(a);
    }
    binaryTree.add(eachLevel);
    print(binaryTree);
  }

  @override
  Widget build(BuildContext context) {
    findDiameter();
    return Scaffold(
      body: Container(),
    );
  }
}
