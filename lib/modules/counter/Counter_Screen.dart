import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
int Counter= 1;

@override
void intiState()
{
 super.initState();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        backgroundColor: Colors.tealAccent,
      ),
      body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: (){
                  setState((){
                    Counter--;
                    print('$Counter');
                  });
                },
                child:Text('Minus',style: TextStyle(
                  fontWeight: FontWeight.w500,fontSize: 40,color: Colors.white,backgroundColor: Colors.tealAccent
                ),)
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25
              ),
              child: Text('$Counter',style: TextStyle(
                fontSize: 60,fontWeight: FontWeight.w900,color: Colors.teal
              ),),
            ),
            TextButton(
                onPressed: (){
                  setState((){
                    Counter++;
                    print('$Counter');
                  });
                },
                child: Text('Plus',style: TextStyle(
                  fontWeight: FontWeight.w500,fontSize: 40,color: Colors.white,backgroundColor: Colors.tealAccent
                ),)),
          ],
        ),
      ),
    );
  }
}
