import 'package:flutter/material.dart';
class UserModel
{
  final int id;
  final String name;
  final int phone;

  UserModel({
   required this.id,
   required this.name,
   required this.phone,
});
}

class UserScreen extends StatelessWidget {
  List<UserModel> users=[
    UserModel(
      id: 1,
      name: 'Mohamed Ahmed',
      phone: 01851548746,
    ),
    UserModel(
      id: 2,
      name: 'Ibrahim Mohamed',
      phone: 018512548746,
    ),
    UserModel(
      id: 3,
      name: 'Ahmed Elsayed',
      phone: 018591548746,
    ),
    UserModel(
      id: 4,
      name: 'Hossam Ahmed',
      phone: 01851548746,
    ),
    UserModel(
      id: 5,
      name: 'Nader Galal',
      phone: 018651548746,
    ),
    UserModel(
      id: 6,
      name: 'Mohamed Ahmed',
      phone: 01851548746,
    ),
    UserModel(
      id: 1,
      name: 'Mohamed Ahmed',
      phone: 01851548746,
    ),
    UserModel(
      id: 1,
      name: 'Mohamed Ahmed',
      phone: 01851548746,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users'
        ),
      ),
      body: ListView.separated(itemBuilder: (context,index)=>buildUserItem(users[index]),
          separatorBuilder: (context,index)=>Container(
            width: double.infinity,
            height: 3,
            color: Colors.grey[300],

          ),
          itemCount: users.length),
    );

  }
}
Widget buildUserItem(UserModel user) => Padding(
  padding: const EdgeInsets.all(10.0),
  child: Row(
    children: [
      CircleAvatar(
        radius: 30,
        child: Text('${user.id}',style: TextStyle(
            fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white
        ),),
      ),
      SizedBox(
        width: 10,
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${user.name}',style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.bold
          ),),
          SizedBox(
            height: 10,
          ),
          Text('${user.phone}',style: TextStyle(
              fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey[600]
          ),)
        ],
      )
    ],
  ),
);