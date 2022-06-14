import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;

  BmiResultScreen({

    required this.result,
    required this.isMale,
    required this.age,

});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text(
          'Bmi Result'
        ),
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gender : ${isMale? 'Male':'Fmale'}',
              style: TextStyle(
                fontSize: 25
              ),

            ),
            Text('Age : $age',
              style: TextStyle(
                fontSize: 25
              ),

            ),
            Text(
'Result : $result',
              style: TextStyle(
                fontSize: 25
              ),
            ),
          ],
        ),
      ),
    );
  }
}
