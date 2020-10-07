import 'package:flutter/material.dart';
import 'package:learnflutter/script/category/CategoryMessageView.dart';
import 'package:learnflutter/script/category/CategoryModel.dart';

class CategoryCell extends StatefulWidget{
     CategoryModel categoryModel;
     CategoryCell(this.categoryModel);

     @override
     CategoryState createState() => CategoryState();

}

class CategoryState extends State<CategoryCell>{
     @override
     Widget build(BuildContext build){

            Row classNameContainer = Row(
              children:[
               Container(
                 margin: EdgeInsets.only(top:10),
                 decoration: BoxDecoration(color: Color.fromRGBO(253, 146, 41, 1), borderRadius:  new BorderRadius.circular((5.0)),),
                 padding: EdgeInsets.all(2),
                 child: Text(this.widget.categoryModel.className, style: TextStyle(fontSize: 14, ),)
               )
              ]
            );

            Container cell = Container(
               height: 80,
               width: double.infinity,
               margin: EdgeInsets.only(top:5),
               padding: EdgeInsets.only(left: 8),
               child:Column(children: [
                   Container(
                     height: 24,
                     width: double.infinity,
                     child: Text('${this.widget.categoryModel.title}', style: TextStyle(fontSize: 18),),
                   ),
                   Container(
                     height: 20,
                     width: double.infinity,
                     child: Row(children: [
                         Text('${this.widget.categoryModel.authorName}'),
                     ],),
                   ),
                   classNameContainer,
               ],)
            );

            return InkWell(
               onTap: (){
                  Navigator.push(context, MaterialPageRoute<void>(
                   builder: (BuildContext context) {
                      return CategoryMessageView(this.widget.categoryModel);
                   },
                  ));
               },
               child:cell,
          );
     }
}