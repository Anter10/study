import 'package:flutter/material.dart';
import 'package:learnflutter/script/person/account/LoginSelectView.dart';

class LoginCell extends StatefulWidget{
      @override
      LoginCellState createState()=>LoginCellState();
}




class LoginCellState extends State<LoginCell>{
      @override
      Widget build(BuildContext build){
             return InkWell(
               onTap: (){
                  Navigator.push(context, MaterialPageRoute<void>(
                         builder: (BuildContext context) {
                            return LoginSelectView();
                         },
                 ));
               },
               child:Container(
                 height:120,
                 width: double.infinity,
                 child: Center(
                     child:Text("添加账户", style: TextStyle(fontSize:18))
                 )
               )
             );
      }
}