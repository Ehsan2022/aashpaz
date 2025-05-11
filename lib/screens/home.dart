import 'package:aashpaz/screens/foodDetails.dart';
import 'package:aashpaz/screens/foods.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:aashpaz/data/data.dart';

import '../data/class.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:const Color.fromARGB(255, 9, 24, 32),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title:Text("سر آشپــــــــــــز",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),) ,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none),color: Colors.white,iconSize: 30,),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),color: Colors.white,iconSize: 30,),
          ],
        ),
        body: Column(
          children:[
                Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("qabuli.png"),
                          radius: 18,
                        ),
                      ),
                      Text(
                        "ehsan__nicksaresht",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                    ],
                  ),
                Image.asset("qabuli.png"),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Icon(Icons.favorite_border,size: 30,color: Colors.white,),
                      Text(" 1.2k ",style: TextStyle(color: Colors.white,fontSize: 16),),
                      SizedBox(width: 20,),
                      Icon(Icons.mode_comment_outlined,size: 30,color: Colors.white,),
                      Text(" 83 ",style: TextStyle(color: Colors.white,fontSize: 16),),
                    ],
                  ),
                ), 
          ],
        ));
  }
}
