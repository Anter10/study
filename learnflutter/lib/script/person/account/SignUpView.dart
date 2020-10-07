import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget{
      @override
      SignUpViewState createState() => SignUpViewState();
}


class SignUpViewState extends State<SignUpView>{
      @override
      Widget build(BuildContext build){

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

            Text codeLabel = Text("请输短信验证码",style: TextStyle(fontSize: 16, color: Colors.black));
            TextFormField codeInputView = TextFormField(
                  decoration: const InputDecoration(
                    hintText: '输入短信验证码',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
            );



            return Scaffold(
             appBar: AppBar(
               backgroundColor: Color.fromRGBO(253, 146, 41, 1),
               title: Text('注册'),
             ),
             body: ListView(padding: EdgeInsets.all(20), children: [
                phoneLabel,
                phoneInputView,
                partNode,
                codeLabel,
                codeInputView,
             ],),
          );

      }
}