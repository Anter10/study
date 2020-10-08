import 'package:flutter/material.dart';
import 'package:learnflutter/script/category/CategoryModel.dart';

class CategoryMessageView extends StatefulWidget{
      CategoryModel categoryModel;
      CategoryMessageView(this.categoryModel);
      @override
      CategoryMessageViewState createState()=>CategoryMessageViewState();
}


class CategoryMessageViewState extends State<CategoryMessageView>{
      Widget titleView(){
           Container titleView = Container(
             child: Text(
               '${this.widget.categoryModel.title}',
               style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
             )
           );

           return titleView;
      }


      Widget msgView(){
        Container msgView = Container(
            margin: EdgeInsets.only(top: 30,bottom: 40),
            child: Text(
              '${this.widget.categoryModel.msg}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.black),
            )
        );

        return msgView;
      }

      Widget dateView(){
          Container dateView = Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              '日期: ${this.widget.categoryModel.dateTime}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.grey),
            )
          );

          return dateView;
      }

      Widget classNameWidget(){
           Row classNameContainer = Row(
              children:[
               Container(
                 margin: EdgeInsets.only(top:10),
                 padding: EdgeInsets.all(2),
                 child: Text('相关: ${this.widget.categoryModel.className}', style: TextStyle(fontSize: 16, color: Colors.grey),)
               )
              ]
          );

          return classNameContainer;
      }

        Widget authorNameView(){
          Container dateView = Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              '作者: ${this.widget.categoryModel.authorName} ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color:  Colors.grey),
            )
          );

          return dateView;
      }
      
      @override
      Widget build(BuildContext build){
          return Scaffold(
             appBar: AppBar(
               backgroundColor: Color.fromRGBO(253, 146, 41, 1),
               title: Text('${this.widget.categoryModel.title}'),
             ),
             body: ListView(
               padding:EdgeInsets.all(10),
               children: 
               [
                titleView(),
                authorNameView(),
                classNameWidget(),
                msgView(),
               ]),
          );
      }
}