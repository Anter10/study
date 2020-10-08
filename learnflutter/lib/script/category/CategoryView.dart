import 'package:flutter/material.dart';
import 'package:learnflutter/script/category/CategoryModel.dart';

import 'CategoryCell.dart';

class CategoryView extends StatefulWidget{
      // CategoryModel(this.id, this.title, this.className, this.msg, this.msgInfo, this.dateTime, this.authorName);

      List<CategoryModel> categorys = [
         CategoryModel("1","布林带和MACD的交易策略","布林带, MACD","布林带和MACD的交易策略", "布林带和MACD的交易策略", "20201007","黑色科技"),
         CategoryModel("1","布林带和MACD的交易策略","布林带, MACD","布林带和MACD的交易策略", "布林带和MACD的交易策略", "20201007","黑色科技"),
         CategoryModel("1","布林带和MACD的交易策略","布林带, MACD","布林带和MACD的交易策略", "布林带和MACD的交易策略", "20201007","黑色科技"),
         CategoryModel("1","布林带和MACD的交易策略","布林带, MACD","布林带和MACD的交易策略", "布林带和MACD的交易策略", "20201007","黑色科技"),
         CategoryModel("1","布林带和MACD的交易策略","布林带, MACD","布林带和MACD的交易策略", "布林带和MACD的交易策略", "20201007","黑色科技"),
         CategoryModel("1","布林带和MACD的交易策略","布林带, MACD","布林带和MACD的交易策略", "布林带和MACD的交易策略", "20201007","黑色科技"),
         CategoryModel("1","布林带和MACD的交易策略","布林带, MACD","布林带和MACD的交易策略", "布林带和MACD的交易策略", "20201007","黑色科技"),
      ];

      @override
      CategoryState createState() => CategoryState();
}

class CategoryState extends State<CategoryView>{
      
      @override
      @override
      Widget build(BuildContext context) {
          return  ListView.separated(
             itemCount: this.widget.categorys.length,
             itemBuilder: (BuildContext context, int index) {
               return CategoryCell(this.widget.categorys[index]);
             },
             separatorBuilder: (BuildContext context, int index) => const Divider(),
           );
      }
}