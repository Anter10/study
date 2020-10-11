import 'package:flutter/material.dart';

class SignInView extends StatefulWidget{
      @override
      SignInViewState createState() => SignInViewState();
}


class SignInViewState extends State<SignInView>{
            int step = 0;
            
          
            

          
      

      @override
      Widget build(BuildContext build){
             print('hello ${this.step}');

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
                    hintText: '输入账号密码',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
            );
            
            RaisedButton sendCodeButton = RaisedButton(
              onPressed: (){
                  setState(() {
                     step = 1;
                 });
              },
              child: const Text('验证账号', style: TextStyle(fontSize: 20,color: Colors.white)),
              padding: const EdgeInsets.all(10),
              color: Color.fromRGBO(253, 146, 41, 1),
            );

          

            RaisedButton verCodeButton = RaisedButton(
              onPressed: (){
                 setState(() {
                     step = 2;
                 });
              },
              child: const Text('验证密码', style: TextStyle(fontSize: 20,color: Colors.white)),
              padding: const EdgeInsets.all(10),
              color: Color.fromRGBO(253, 146, 41, 1),
            );

            Container sendCodeContainer = Container(
               child: sendCodeButton,
               margin: EdgeInsets.only(top: 120),
            );

            Container verCodeContainer = Container(
               child: verCodeButton,
               margin: EdgeInsets.only(top: 120),
            );

            return Scaffold(
             appBar: AppBar(
               backgroundColor: Color.fromRGBO(253, 146, 41, 1),
               title: Text('登陆'),
             ),
             body: ListView(padding: EdgeInsets.all(20),children: [
                this.step == 0 ? phoneLabel: codeLabel,
                this.step == 0 ? phoneInputView: codeInputView,
                partNode,
                this.step == 0 ? sendCodeContainer:verCodeContainer,
             ],),
          );

      }
}