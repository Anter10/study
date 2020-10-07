import 'package:flutter/material.dart';
import 'package:learnflutter/script/person/account/SignInCell.dart';
import 'package:learnflutter/script/person/account/SignUpCell.dart';

class LoginSelectView extends StatefulWidget{
      @override
      LoginSelectViewState createState() => LoginSelectViewState();
}


class LoginSelectViewState extends State<LoginSelectView>{
      @override
      Widget build(BuildContext build){
            return Scaffold(
             appBar: AppBar(
               backgroundColor: Color.fromRGBO(253, 146, 41, 1),
               title: Text('添加账号'),
             ),
             body: ListView(children: [
                 SignInCell(),
                 Divider(),
                 SignUpCell(),
                 Divider(),
             ],),
          );

      }
}