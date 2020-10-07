import 'package:flutter/material.dart';
import 'package:learnflutter/script/person/collect/CollectView.dart';

class CollectCell extends StatefulWidget{
      @override
      CollectCellState createState()=>CollectCellState();
}




class CollectCellState extends State<CollectCell>{
      @override
      Widget build(BuildContext build){
             return InkWell(
                onTap: (){
                        Navigator.push(context, MaterialPageRoute<void>(
                         builder: (BuildContext context) {
                            return CollectView();
                         },
                        ));
                },
               child:Container(
                 height:50,
                 padding: EdgeInsets.only(left:8),
                 width: double.infinity,
                 child: Row(
                   children: [
                     Icon(Icons.favorite_border,size: 36,color: Color.fromRGBO(253, 146, 41, 1),),
                     Container(
                       margin: EdgeInsets.only(left:10),
                       child:Text("收藏", style: TextStyle(fontSize:18,color: Colors.black)),
                     )
                   ],
                 )
             )
             );
      }
}