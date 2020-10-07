import 'package:flutter/material.dart';

class AboutView extends StatefulWidget{
      @override
      AboutViewState createState() => AboutViewState();
}


class AboutViewState extends State<AboutView>{
      @override
      Widget build(BuildContext build){
             
             Container appInfoContainer = Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child:Text(
                  "       学会交易, 是一款让用户知晓股票期货最新讯息和学习交易策略的平台。\n\n       在这里可以知晓平台对期货股票相关的预估和猜测,(这里只是平台的建议和见解，仅供参考) 可以关注相关的交易品种进行分析和评估，平台相关的讯息会根据每日国际情况进行分析并更新到平台讯息上面，数据只显示最近一周的讯息数据。\n\n       交易策略会使用相关的技术指标来组成交易策略组合，这些交易策略组合仅供参考和学习，这些交易策略是平台自己根据技术指标分析得来。",
                  style: TextStyle(fontSize: 18, ),
                  )
             );

             Container versionContainer = Container(
                width: double.infinity,
                margin: EdgeInsets.only(top:10),
                child: Center(child: 
                Text(
                  "软件版本: 1.0.0",
                  style: TextStyle(fontSize: 14, ),
                  )
                )
             );

              Container copyrightContainer = Container(
                margin: EdgeInsets.only(top:30),
                width: double.infinity,
                child: Center(child: 
                Text(
                  "Copyright 2019-2020 黑色科技",
                  style: TextStyle(fontSize: 14, ),
                  )
                )
             );

             
            
            return Scaffold(
             appBar: AppBar(
               backgroundColor: Color.fromRGBO(253, 146, 41, 1),
               title: Text('关于'),
             ),
             body: ListView(children: [
                appInfoContainer,
                Divider(),
                versionContainer,
                copyrightContainer,
             ],),
          );

      }
}