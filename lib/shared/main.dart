import 'package:flutter/material.dart';
import 'package:project/layerout/home_layerout.dart';
import 'package:project/modules/bmi/Bmi_Screen.dart';
import 'package:project/modules/counter/Counter_Screen.dart';
import 'package:project/modules/login/Login_Screen.dart';
import 'package:project/modules/messenger/Messenger_Screen.dart';
import 'package:project/modules/users/User_Screen.dart';
import 'package:project/modules/home/home_screen.dart';
void main ()
    {
      runApp(MyApp());
    }
    class MyApp extends StatelessWidget
    {
      @override
      Widget build(BuildContext context)
      {
        return
          MaterialApp(debugShowCheckedModeBanner: false,
            home: HomeLayerout());
      }
    }