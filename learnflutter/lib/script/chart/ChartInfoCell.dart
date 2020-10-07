import 'package:flutter/material.dart';
import 'package:learnflutter/script/chart/ChartMessageView.dart';

import 'ChartModel.dart';

class ChartInfoCell extends StatefulWidget{
      ChartModel chartModel;
      
      ChartInfoCell(this.chartModel){
         print(this.chartModel.title);
      }

      @override
      ChartInfoState createState() => ChartInfoState();
}


class ChartInfoState extends State<ChartInfoCell>{
      @override
      Widget build(BuildContext context){
          
          Text titleLabel = Text(
            '${this.widget.chartModel.title}',
            textAlign: TextAlign.left,
            style:TextStyle(fontSize: 18),
          );

          Container classNameContainer = Container(
            decoration: BoxDecoration(color: Color.fromRGBO(253, 146, 41, 1), borderRadius:  new BorderRadius.circular((5.0)),),
            padding: EdgeInsets.all(2),
            child: Text(this.widget.chartModel.className, style: TextStyle(fontSize: 14, ),)
          );

          Text dateTimeLabel = Text(this.widget.chartModel.dateTime, style: TextStyle(fontSize: 14, ),);
          Text askOrSellLabel = Text(this.widget.chartModel.askOrSell, style: TextStyle(fontSize: 16),);

          var cell = Container(
              height: 80,
              width: double.infinity,
              padding: EdgeInsets.only(left: 8, top: 0),
              
              child:Column(children: [
                  Container(
                    height: 24,
                    width: double.infinity,
                    child: titleLabel,
                  ),
                  Container(
                    height:14,
                    margin: EdgeInsets.only(top: 2),
                    width: double.infinity,
                    child:dateTimeLabel,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: double.infinity,
                    child:Row(
                      children: [
                        classNameContainer,
                        askOrSellLabel,
                        
                     ])
                  )
              ],)
          );

          return InkWell(
               onTap: (){
                  Navigator.push(context, MaterialPageRoute<void>(
                   builder: (BuildContext context) {
                      return ChartMessageView(this.widget.chartModel);
                   },
                  ));
               },
               child:cell,
          );
      }
}