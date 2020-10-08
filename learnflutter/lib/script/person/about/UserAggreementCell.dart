import 'package:flutter/material.dart';
import 'package:learnflutter/script/person/about/AboutView.dart';

import 'UserAggreementView.dart';

class UserAggreementCell extends StatefulWidget{
      @override
      UserAggreementCellState createState()=>UserAggreementCellState();
}



class UserAggreementCellState extends State<UserAggreementCell>{
      @override
      Widget build(BuildContext build){
             Container cell = Container(
                 height:50,
                 padding: EdgeInsets.only(left:8),
                 width: double.infinity,
                 child: Row(
                     children: [
                        Icon(Icons.list,size: 36,color: Color.fromRGBO(253, 146, 41, 1),),
                        Container(
                          margin: EdgeInsets.only(left:10),
                          child:Text('用户协议', style: TextStyle(fontSize:18,color: Colors.black)),
                        )
                     ],
                 )
             );

             return InkWell(
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute<void>(
                         builder: (BuildContext context) {
                            return UserAggreementView();
                         },
                        ));
                    },
                    child:cell
             );

      }
}