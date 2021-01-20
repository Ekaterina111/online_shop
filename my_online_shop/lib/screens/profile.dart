import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
    Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text("Профиль"),
     ),
     body: Column(
      children: [
          ListTile(
            leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage('https://www.anypics.ru/download.php?file=201210/1366x768/anypics.ru-17862.jpg'),
                ),
          title: Text(
               "Егорова Екатерина Андреевна",
               style: TextStyle(fontSize: 18),
           ),
           subtitle: Text("pokupatel@gmail.com"),
          ),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:30),
              child:
          Text(
            "Тут могло быть что-то интересное)",
             style: TextStyle(fontSize: 18),
             ),  
               )
      ],
         ), 
    );
  }
}