import 'package:flutter/material.dart';
import 'package:learnflutter/script/category/CategoryModel.dart';

class CategoryMessageView extends StatefulWidget{
      CategoryModel categoryModel;
      CategoryMessageView(this.categoryModel);
      @override
      CategoryMessageViewState createState()=>CategoryMessageViewState();
}


class CategoryMessageViewState extends State<CategoryMessageView>{
      @override
      Widget build(BuildContext build){
          return Scaffold(
             appBar: AppBar(
               backgroundColor: Color.fromRGBO(253, 146, 41, 1),
               title: Text('${this.widget.categoryModel.title}'),
             ),
             body: ListView(children: [
                Text("Hello msg")
             ],),
          );
      }
}