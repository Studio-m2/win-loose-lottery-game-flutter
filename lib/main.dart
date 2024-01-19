// ignore_for_file: unused_import

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

int num=0 ;//fixed number;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
home: Scaffold(

 body:Center(child:Column(
crossAxisAlignment:CrossAxisAlignment.center ,
mainAxisAlignment:MainAxisAlignment.center ,
children: [

Text('Your winning number is :$num',style:const TextStyle(fontSize: 30),),

(num==5)?  Container(

width: 250,
height: 250,
color: Colors.blue,
child:Column(
  crossAxisAlignment:CrossAxisAlignment.center ,
  mainAxisAlignment:MainAxisAlignment.center ,
children: [

Icon(Icons.done_all_outlined),
Text('you have won',style:TextStyle(fontSize: 30),),




],






),

//true condition
decoration:BoxDecoration(

borderRadius:BorderRadius.circular(20),
color: Colors.black,

) ,

) :


Container(

width: 250,
height: 250,
color: Colors.yellow,

child:Column(

 crossAxisAlignment:CrossAxisAlignment.center ,
  mainAxisAlignment:MainAxisAlignment.center ,


children: [





Icon(Icons.error),
Text('Better for next time',style:TextStyle(fontSize: 20),),



],


),
  //false condition
),


],

 ) 
 
 ), 


 floatingActionButton:FloatingActionButton(
onPressed: (){
setState(() {
  num=Random().nextInt(6); ///random number upto ten //random number formula
});





},child: const Text('enter'),

 ) ,
),


    );
    
  }
}