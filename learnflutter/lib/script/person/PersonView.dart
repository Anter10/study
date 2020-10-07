import 'package:flutter/material.dart';

import 'about/AboutCell.dart';
import 'collect/CollectCell.dart';
import 'email/EmailCell.dart';
import 'account/LoginCell.dart';

class PersonView extends StatefulWidget{
      @override
      
      PersonViewState createState()=>PersonViewState();
}

class PersonViewState extends State<PersonView>{
      
      @override
      Widget build(BuildContext build){
            return  ListView(
             children: <Widget>[
               LoginCell(),
               Divider(),
               EmailCell(),
               Divider(),
               CollectCell(),
               Divider(),
               AboutCell(),
               Divider(),
             ],
           );
      }
}