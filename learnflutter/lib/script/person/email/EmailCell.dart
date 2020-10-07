import 'package:flutter/material.dart';
import 'package:learnflutter/script/person/email/BindEmailView.dart';

class EmailCell extends StatefulWidget{
      @override
      EmailCellState createState()=>EmailCellState();
}


class EmailCellState extends State<EmailCell>{
      @override
      Widget build(BuildContext build){
             return InkWell(
               onTap: (){
                    Navigator.push(context, MaterialPageRoute<void>(
                         builder: (BuildContext context) {
                            return BindEmailView();
                         },
                    ));
               },
               child:Container(
                 height:50,
                 padding: EdgeInsets.only(left:8),
                 width: double.infinity,
                 child: Row(
                   children: [
                     Icon(Icons.email,size: 36,color: Color.fromRGBO(253, 146, 41, 1),),
                     Container(
                       margin: EdgeInsets.only(left:10),
                       child:Text("绑定邮箱", style: TextStyle(fontSize:18)),
                     )
                   ],
                 )
             )
             );
      }
}