import 'package:flutter/material.dart';

Widget defultButton({
  double width = double.infinity,
  Color background = Colors.teal,
  required VoidCallback function ,
  required String text ,
}) => Container(
  width: width,
  color: background,
  child: MaterialButton(
    onPressed: function,
    child: Text(
      text,
      style:TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold
      ),
    ),
  ),
);

Widget defultFormField ({
required TextEditingController controler,
  required TextInputType type,

}) =>


    TextFormField(
  controller: controler,
  keyboardType: type,
  decoration: InputDecoration(
      prefixIcon: Icon(
        Icons.email,),
      labelText: 'Email Address',
      border:OutlineInputBorder()
  ),
);
