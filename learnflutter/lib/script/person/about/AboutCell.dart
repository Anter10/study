import 'package:flutter/material.dart';
import 'package:learnflutter/script/person/about/AboutView.dart';

class AboutCell extends StatefulWidget{
      @override
      AboutCellState createState()=>AboutCellState();
}




class AboutCellState extends State<AboutCell>{
      @override
      Widget build(BuildContext build){
             return Container(
                 height:50,
                 padding: EdgeInsets.only(left:8),
                 width: double.infinity,
                 child: InkWell(
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute<void>(
                         builder: (BuildContext context) {
                            return AboutView();
                         },
                        ));
                    },
                    child:Row(
                     children: [
                        Icon(Icons.public,size: 36,color: Color.fromRGBO(253, 146, 41, 1),),
                        Container(
                          margin: EdgeInsets.only(left:10),
                          child:Text("关于", style: TextStyle(fontSize:18,color: Colors.black)),
                        )
                     ],
                    )
                 )
             );
      }
}