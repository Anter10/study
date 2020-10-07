import 'package:flutter/material.dart';

class BindEmailView extends StatefulWidget{
      @override
      BindEmailViewState createState() => BindEmailViewState();
}


class BindEmailViewState extends State<BindEmailView>{
      @override
      Widget build(BuildContext build){
            return Scaffold(
             appBar: AppBar(
               backgroundColor: Color.fromRGBO(253, 146, 41, 1),
               title: Text('绑定邮箱'),
             ),
             body: ListView(children: [
                
             ],),
          );

      }
}