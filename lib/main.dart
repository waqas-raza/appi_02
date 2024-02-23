import 'package:flutter/material.dart';
import 'Button.dart';
import 'package:math_expressions/math_expressions.dart';
void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _State();
}

class _State extends State<MyApp> {
  var userInput='';
  var   answer ='';
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body:Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(userInput.toString(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Colors.white),),
                  Text(answer.toString(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Colors.white),),

                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Button(title: 'AC',onpress: (){
                        userInput='';
                        answer='';
                        setState(() {

                        });


                      },),
                      Button(title: '+/-',onpress: (){
                        userInput += '+/-';
                        setState(() {

                        });
              
                      },),
                      Button(title: '%',onpress:(){
                        userInput += '%';
                        setState(() {

                        });
              
                      },),
                      Button(title: '/',color: Color(0xffffa00a),onpress: (){
                        userInput += '/';
                        setState(() {

                        });
              
                      },),
                    ],
                  ),
                  Row(
                    children: [
                      Button(title: '7',onpress: (){
                        userInput=userInput+'7';
                        setState(() {

                        });
                      },),
                      Button(title: '8',onpress: (){
                        userInput=userInput+'8';
                        setState(() {
                        });
              
                      },),
                      Button(title: '9',onpress:(){
                        userInput=userInput+'9';
                        setState(() {

                        });
              
                      },),
                      Button(title: 'x',color: Color(0xffffa00a),onpress: (){
                        userInput=userInput+'x';
                        setState(() {
                        });
                      },),
                    ],
                  ),
                  Row(
                    children: [
                      Button(title: '4',onpress: (){
                        userInput=userInput+'4';
                        setState(() {
                        });
                      },),
                      Button(title: '5',onpress: (){
                        userInput=userInput+'5';
                        setState(() {
                        });
              
                      },),
                      Button(title: '6',onpress:(){
                        userInput=userInput+'6';
                        setState(() {
                        });
              
                      },),
                      Button(title: '-',color: Color(0xffffa00a),onpress: (){
                        userInput=userInput+'-';
                        setState(() {
                        });
              
                      },),
                    ],
                  ),
                  Row(
                    children: [
                      Button(title: '1',onpress: (){
                        userInput=userInput+'1';
                        setState(() {
                        });
                      },),
                      Button(title: '2',onpress: (){
                        userInput=userInput+'2';
                        setState(() {
                        });
              
                      },),
                      Button(title: '3',onpress:(){
                        userInput=userInput+'3';
                        setState(() {
                        });
              
                      },),
                      Button(title: '+',color: Color(0xffffa00a),onpress: (){
                        userInput=userInput+'+';
                        setState(() {
                        });
                      },),
                    ],
                  ),
                  Row(
                    children: [
                      Button(title: '0',onpress: (){
                        userInput=userInput+'0';
                        setState(() {
                        });
                      },),
                      Button(title: '-',onpress: (){
                        userInput=userInput+'-';
                        setState(() {
                        });
              
                      },),
                      Button(title: 'DEL',onpress:(){
                              userInput=userInput.substring(0,userInput.length-1);

                        setState(() {
                        });
              
                      },),
                      Button(title: '=',color: Color(0xffffa00a),onpress: (){

                        equal();
                        setState(() {

                        });

                        setState(() {

                        });
              
                      },),
                    ],
                  )
                ],
              ),
            )

          
          ],
          
          ),
        

          ) ,

      )
    );
  }
  void equal(){
    String finaluserinput=userInput.replaceAll('x', '*');
    Parser p=Parser();
    Expression expression=p.parse(finaluserinput);
    ContextModel contextModel=ContextModel();
    double eval=expression.evaluate(EvaluationType.REAL, contextModel);
    answer=eval.toString();
  }

}
