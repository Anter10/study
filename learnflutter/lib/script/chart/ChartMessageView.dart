import 'package:flutter/material.dart';

import 'ChartModel.dart';

class ChartMessageView extends StatefulWidget{
      ChartModel chartModel;
      
      ChartMessageView(this.chartModel);
      @override
      ChartMessageViewState createState()=>ChartMessageViewState();
}

class ChartMessageViewState extends State<ChartMessageView>{
      @override
      Widget build(BuildContext build){
          return Scaffold(
             appBar: AppBar(
               backgroundColor: Color.fromRGBO(253, 146, 41, 1),
               title: Text('${this.widget.chartModel.title}'),
             ),
             body: ListView(children: [
                Text("Hello msg")
             ],),
          );
      }
}