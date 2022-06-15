import 'package:flutter/material.dart';
import 'package:project/modules/new_archive/Archive.dart';
import 'package:project/modules/new_done/Done.dart';
import 'package:project/modules/new_task/Tasks.dart';

class HomeLayerout extends StatefulWidget {


  @override
  State<HomeLayerout> createState() => _HomeLayeroutState();
}

class _HomeLayeroutState extends State<HomeLayerout> {
  int currentindex = 0;

  List<Widget> screens=[
    NewTaskScreen(),
    NewDoneScreen(),
    NewArchiveScreen(),
  ];
  List<String> titels =
      [
        'Tasks',
        'Dones',
        'Archive',
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text(titels[currentindex]),
    ),
      body: screens[currentindex],
      floatingActionButton: FloatingActionButton(
        onPressed: (){},child:Icon(Icons.add) ,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        onTap: (index){
setState((){
  currentindex=index;
});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.done),label: 'Done'),
          BottomNavigationBarItem(icon: Icon(Icons.archive),label: 'Archive'),
        ],
      ),

    );
  }
}
