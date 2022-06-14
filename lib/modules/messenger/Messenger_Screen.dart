import 'package:flutter/material.dart';
class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 20,
        title:
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/34492145?v=4'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Chat', style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: CircleAvatar(
              radius: 15, backgroundColor: Colors.lightBlueAccent,
              child: Icon(Icons.camera_alt, color: Colors.white,))),
          IconButton(onPressed: () {}, icon: CircleAvatar(
              radius: 15, backgroundColor: Colors.lightBlueAccent,
              child: Icon(Icons.edit, color: Colors.white,))),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(12),color: Colors.grey.shade200
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Search',style: TextStyle(fontSize: 15),),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:
              Row(
                children: [
                  Container(
                    width: 60,
                    child: Column(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  start: 1,bottom: 3
                              ),
                              child: CircleAvatar(
                                radius: 6,backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Mohamed Ahmed Elsayed Mohamed',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,)

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  start: 1,bottom: 3
                              ),
                              child: CircleAvatar(
                                radius: 6,backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Mohamed Ahmed Elsayed Mohamed',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,)

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  start: 1,bottom: 3
                              ),
                              child: CircleAvatar(
                                radius: 6,backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Mohamed Ahmed Elsayed Mohamed',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,)

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  start: 1,bottom: 3
                              ),
                              child: CircleAvatar(
                                radius: 6,backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Mohamed Ahmed Elsayed Mohamed',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,)

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  start: 1,bottom: 3
                              ),
                              child: CircleAvatar(
                                radius: 6,backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Mohamed Ahmed Elsayed Mohamed',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,)

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  start: 1,bottom: 3
                              ),
                              child: CircleAvatar(
                                radius: 6,backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Mohamed Ahmed Elsayed Mohamed',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,)

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  start: 1,bottom: 3
                              ),
                              child: CircleAvatar(
                                radius: 6,backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Mohamed Ahmed Elsayed Mohamed',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,)

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  start: 1,bottom: 3
                              ),
                              child: CircleAvatar(
                                radius: 6,backgroundColor: Colors.red,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Mohamed Ahmed Elsayed Mohamed',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,)

                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                          start: 1,bottom: 3
                      ),
                      child: CircleAvatar(
                        radius: 6,backgroundColor: Colors.red,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 13,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mohamed Ahmed',style: TextStyle(
                      ),),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(child: Text('7abibi a7amo 7abibi a7amo 7abibi 7abibi',maxLines: 2,overflow: TextOverflow.ellipsis,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              shape: BoxShape.circle
                            ),
                          ),
                        ),
                        Text('10:00 AM',style: TextStyle(
                          fontSize: 10
                        ),)
                      ],
                    )],
                  ),
                ),
                
              ],
            )
          ],

        ),
      ),


    );
  }
}
