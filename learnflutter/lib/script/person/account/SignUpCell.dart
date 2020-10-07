import 'package:flutter/material.dart';
import 'package:learnflutter/script/person/account/SignUpView.dart';

class SignUpCell extends StatefulWidget{
      @override
      SignUpCellState createState()=>SignUpCellState();
}


class SignUpCellState extends State<SignUpCell>{
      @override
      Widget build(BuildContext build){
             return InkWell(
               onTap: (){
                    Navigator.push(context, MaterialPageRoute<void>(
                         builder: (BuildContext context) {
                            return SignUpView();
                         },
                    ));
               },
               child:Container(
                 height:80,
                 padding: EdgeInsets.only(left:8),
                 width: double.infinity,
                 child: Row(
                   children: [
                     Icon(Icons.app_registration,size: 36,color: Color.fromRGBO(253, 146, 41, 1),),
                     Container(
                       margin: EdgeInsets.only(left:10),
                       child:Text("注册一个账号", style: TextStyle(fontSize:18,color: Colors.black)),
                     )
                   ],
                 )
             )
             );
      }
}