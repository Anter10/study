import 'package:flutter/material.dart';

class SignInView extends StatefulWidget{
      @override
      SignInViewState createState() => SignInViewState();
}


class SignInViewState extends State<SignInView>{

            Text phoneLabel = Text("请输入手机号",style: TextStyle(fontSize: 16, color: Colors.black));
            TextFormField phoneInputView = TextFormField(
                  decoration: const InputDecoration(
                    hintText: '输入手机号',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
            );

            Container partNode = Container(
              height:40,
              width: double.infinity,
            );

            Text codeLabel = Text("请输账号密码",style: TextStyle(fontSize: 16, color: Colors.black));
            TextFormField codeInputView = TextFormField(
                  decoration: const InputDecoration(
                    hintText: '输入账号密码"',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
            );



      @override
      Widget build(BuildContext build){
            return Scaffold(
             appBar: AppBar(
               backgroundColor: Color.fromRGBO(253, 146, 41, 1),
               title: Text('登陆'),
             ),
             body: ListView(padding: EdgeInsets.all(20),children: [
                phoneLabel,
                phoneInputView,
                partNode,
                codeLabel,
                codeInputView,
             ],),
          );

      }
}