import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:uidesign/main.dart';

void main() {
  runApp(Myapp());

}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : home(),
    )
  }
}
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
    List<String> imagePaths = [
    'https://images.unsplash.com/photo-1447752875215-b2761acb3c5d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    'https://images.unsplash.com/photo-1580777187326-d45ec82084d3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
    'https://images.unsplash.com/photo-1531804226530-70f8004aa44e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
    'https://images.unsplash.com/photo-1465056836041-7f43ac27dcb5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
    'https://images.unsplash.com/photo-1573553256520-d7c529344d67?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'
  ];

  HashSet selectItems = HashSet();
  bool isMultiSelectionEnabled = false;
  @override
  
  Widget build(BuildContext context) {
    
    return Scaffold(
            appBar: AppBar(
              title: Text("grid view Multi Selection "),

            ),
            body: Container(
              child: GridView.count(crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              children: imagePaths.map((String path){
                               return getGriditem(path);
              }
            ).toList();
    )
    )
    );
  }
}
void Ms(String Path)
{
   if(SelectI)
}

GridTile getGriditem(String path)
{
  return GridTile(child: InkWell
  (
    onTap: (() {
      
    },
    child: Image.network(path),
  )
  );
}