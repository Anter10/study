import 'package:flutter/material.dart';

import 'ChartModel.dart';

class ChartMessageView extends StatefulWidget{
      ChartModel chartModel;
      
      ChartMessageView(this.chartModel);
      @override
      ChartMessageViewState createState()=>ChartMessageViewState();
}

class ChartMessageViewState extends State<ChartMessageView>{

      Widget titleView(){
           Container titleView = Container(
             child: Text(
               '${this.widget.chartModel.title}',
               style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
             )
           );

           return titleView;
      }

      Widget dateView(){
          Container dateView = Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              '日期: ${this.widget.chartModel.dateTime}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.grey),
            )
          );

          return dateView;
      }

      Widget msgView(){
        Container msgView = Container(
            margin: EdgeInsets.only(top: 30,bottom: 40),
            child: Text(
              '${this.widget.chartModel.msg}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.black),
            )
        );

          return msgView;
      }

      Widget classNameAndAskOrSell(){
            Container view =  Container(
              margin:EdgeInsets.only(top: 10),
              child:Row(
                children:[
                   Text('关联: ${this.widget.chartModel.className} ${this.widget.chartModel.askOrSell}', style: TextStyle(fontSize: 16,color: Colors.grey ))
                ]
              )
            );

            return view;
      }

      @override
      Widget build(BuildContext build){
          return Scaffold(
             appBar: AppBar(
               backgroundColor: Color.fromRGBO(253, 146, 41, 1),
               title: Text('${this.widget.chartModel.title}'),
             ),
             body: ListView(
              padding: EdgeInsets.all(10),
              children: [
                titleView(),
                dateView(),
                classNameAndAskOrSell(),
                msgView(),
              ]
             ),
          );
      }
}