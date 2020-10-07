import 'package:flutter/material.dart';
import 'package:learnflutter/script/person/account/SignInView.dart';
import 'package:learnflutter/script/person/email/BindEmailView.dart';

class SignInCell extends StatefulWidget{
      @override
      SignInCellState createState()=>SignInCellState();
}


class SignInCellState extends State<SignInCell>{
      @override
      Widget build(BuildContext build){
             return InkWell(
               onTap: (){
                    Navigator.push(context, MaterialPageRoute<void>(
                         builder: (BuildContext context) {
                            return SignInView();
                         },
                    ));
               },
               child:Container(
                 height:80,
                 padding: EdgeInsets.only(left:8),
                 width: double.infinity,
                 child: Row(
                   children: [
                     Icon(Icons.login,size: 36,color: Color.fromRGBO(253, 146, 41, 1),),
                     Container(
                       margin: EdgeInsets.only(left:10),
                       child:Text("登陆一个已有账号", style: TextStyle(fontSize:18,color: Colors.black)),
                     )
                   ],
                 )
             )
             );
      }
}