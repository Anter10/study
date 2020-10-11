import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget{
      @override
      SignUpViewState createState() => SignUpViewState();
}


class SignUpViewState extends State<SignUpView>{

      int step = 0;


      @override
      Widget build(BuildContext build){

          Text phoneLabel = Text("请输入手机号",style: TextStyle(fontSize: 16, color: Colors.black));
            TextFormField phoneInputView = TextFormField(
                  keyboardType: TextInputType.number,
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

            Text codeLabel = Text("请输入手机短信验证码",style: TextStyle(fontSize: 16, color: Colors.black));
            TextFormField codeInputView = TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: '输入手机短信验证码',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
            );


            Text passwordLabel = Text("请设置账号密码",style: TextStyle(fontSize: 16, color: Colors.black));
            TextFormField inputPasswordView = TextFormField(
                  decoration: const InputDecoration(
                    hintText: '输入密码',
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
              child: const Text('发送验证码', style: TextStyle(fontSize: 20,color: Colors.white)),
              padding: const EdgeInsets.all(10),
              color: Color.fromRGBO(253, 146, 41, 1),
            );

          

            RaisedButton verCodeButton = RaisedButton(
              onPressed: (){
                 setState(() {
                     step = 2;
                 });
              },
              child: const Text('验证验证码', style: TextStyle(fontSize: 20,color: Colors.white)),
              padding: const EdgeInsets.all(10),
              color: Color.fromRGBO(253, 146, 41, 1),
            );


            RaisedButton setPasswordButton = RaisedButton(
              onPressed: (){
                 setState(() {
                     step = 3;
                 });
              },
              child: const Text('设置密码', style: TextStyle(fontSize: 20,color: Colors.white)),
              padding: const EdgeInsets.all(10),
              color: Color.fromRGBO(253, 146, 41, 1),
            );

            Container setPasswordContainer = Container(
               child: setPasswordButton,
               margin: EdgeInsets.only(top: 120),
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
               title: Text('注册'),
             ),
             body: ListView(padding: EdgeInsets.all(20), children: [
                this.step == 0 ? phoneLabel: this.step == 1 ? codeLabel : passwordLabel,
                this.step == 0 ? phoneInputView: this.step == 1 ? codeInputView : inputPasswordView,
                partNode,
                this.step == 0 ? sendCodeContainer: this.step == 1 ? verCodeContainer : setPasswordContainer,
             ],),
          );

      }
}