import 'package:flutter/material.dart';
import 'package:project/shared/components/components.dart';
class LoginScreen extends StatelessWidget {
  var emailControler = TextEditingController();
  var passWordControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.tealAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: emailControler,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,),
                labelText: 'Email Address',
                border:OutlineInputBorder()
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: passWordControler,
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.password,),
                  suffixIcon: Icon(
                    Icons.remove_red_eye
                  ),
                  labelText: 'Password',
                  border:OutlineInputBorder()
              ),
            ),
            SizedBox(
              height: 30,
            ),
            defultButton(function: (){
              print(emailControler.text);
              print(passWordControler.text);
            }, text: 'Login'),

            SizedBox(
              height: 30,
            ),

            defultButton(function: (){
              print(emailControler.text);
              print(passWordControler.text);
            }, text: 'Register'),

            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t Have An Account?'),
                TextButton(onPressed: (){}, child: Text(
                  'Regester Now'
                ))

              ],
            ),
          ],
        ),
      ),
    );
  }
}
