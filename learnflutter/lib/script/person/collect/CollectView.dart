import 'package:flutter/material.dart';

class CollectView extends StatefulWidget{
      @override
      CollectViewState createState() => CollectViewState();
}


class CollectViewState extends State<CollectView>{
      @override
      Widget build(BuildContext build){
            return Scaffold(
             appBar: AppBar(
               backgroundColor: Color.fromRGBO(253, 146, 41, 1),
               title: Text('收藏'),
             ),
             body: ListView(children: [
                
             ],),
          );

      }
}