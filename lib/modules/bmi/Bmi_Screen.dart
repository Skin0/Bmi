import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project/modules/result/BmiResult_Screen.dart';


class BmiScreen extends StatefulWidget {


  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {

  bool isMale = true;

  double height = 120;
  int age =20;
  int weight =80;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Color(0XffDEEEA2),
      ),
      body: Column(
        children: [
          Expanded(

            child:  Container(
                color: Color(0xffC7E7B3),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: isMale? Colors.teal : Colors.grey[300]
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(image: AssetImage('images/male.png'),
                                height: 90,
                                width: 90,),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: !isMale ? Colors.teal :Colors.grey[300]
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(image: AssetImage('images/female.png'),
                                height: 90,
                                width: 90,),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),

          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Height',style: TextStyle(
                    fontSize: 30,fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('${height.round()}',style: TextStyle(
                        fontSize: 40,fontWeight: FontWeight.bold
                      ),
                      ),
                      Text('cm',style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Slider(value:height,max: 220,min: 80, onChanged:(Value){
                    setState(()
                   {
                     height=Value;
                   }
                    );
                  } )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Age',style: TextStyle(
                          fontSize: 25,fontWeight: FontWeight.bold,
                        ),
                        ),
                        Text('${age}',style: TextStyle(
                            fontSize: 30,fontWeight: FontWeight.bold
                        ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: (){
                              setState((){
                                age--;
                              }
                              );
                            },child: Icon(Icons.remove),mini: true,),
                            SizedBox(
                              width: 20,
                            ),
                            FloatingActionButton(onPressed: (){
                              setState((){
                                age++;
                              });
                            },child: Icon(Icons.add),mini: true,)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Weight',style: TextStyle(
                          fontSize: 25,fontWeight: FontWeight.bold,
                        ),
                        ),
                        Text('$weight',style: TextStyle(
                            fontSize: 30,fontWeight: FontWeight.bold
                        ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: (){
                              setState((){
                                weight--;
                              });
                            },child: Icon(Icons.remove),mini: true,),
                            SizedBox(
                              width: 20,
                            ),
                            FloatingActionButton(onPressed: (){
                              setState((){
                                weight++;
                              });
                            },child: Icon(Icons.add),mini: true,)
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Color(0xff8DDBE1),
            child: MaterialButton(
              onPressed: (){
                double result = weight /pow(height/100, 2);
                print(result.round());
                Navigator.push(context, MaterialPageRoute(builder: ((context) => BmiResultScreen(
                  age: age,
                  isMale: isMale,
                  result: result.round(),
                )),),);
              },
              height: 50,
            child:
            Text('Calculate'),),


          )
        ],
      ),
    );
  }
}
