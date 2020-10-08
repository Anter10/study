import 'package:flutter/material.dart';

class UserAggreementView extends StatefulWidget{
      @override
      UserAggreementViewState createState() => UserAggreementViewState();
}


class UserAggreementViewState extends State<UserAggreementView>{
      @override
      Widget build(BuildContext build){
            return Scaffold(
             appBar: AppBar(
               backgroundColor: Color.fromRGBO(253, 146, 41, 1),
               title: Text('用户协议'),
             ),
             body: ListView(children: [
                
             ],),
          );

      }
}