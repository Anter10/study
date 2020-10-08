import 'package:flutter/material.dart';
import 'package:learnflutter/script/person/about/AboutView.dart';

import 'AnnounceView.dart';

class AnnounceCell extends StatefulWidget{
      @override
      AnnounceCellState createState()=>AnnounceCellState();
}



class AnnounceCellState extends State<AnnounceCell>{
      @override
      Widget build(BuildContext build){
             Container cell = Container(
                 height:50,
                 padding: EdgeInsets.only(left:8),
                 width: double.infinity,
                 child: Row(
                     children: [
                        Icon(Icons.security,size: 36,color: Color.fromRGBO(253, 146, 41, 1),),
                        Container(
                          margin: EdgeInsets.only(left:10),
                          child:Text('隐私安全', style: TextStyle(fontSize:18,color: Colors.black)),
                        )
                     ],
                 )
             );

             return InkWell(
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute<void>(
                         builder: (BuildContext context) {
                            return AnnounceView();
                         },
                        ));
                    },
                    child:cell
             );

      }
}