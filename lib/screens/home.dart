import 'package:flutter/material.dart';


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
        body: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children:[
                   FoodPost(userImage: "afg.jpeg", userName: "ehsan_nicksarisht", postImage: "qabuli.png", likes: "140", comments: "54"),
                   FoodPost(userImage: "afg.jpeg", userName: "ehsan_nicksarisht", postImage: "qabuli.png", likes: "140", comments: "54"),
                   FoodPost(userImage: "afg.jpeg", userName: "ehsan_nicksarisht", postImage: "qabuli.png", likes: "140", comments: "54"),
                   FoodPost(userImage: "afg.jpeg", userName: "ehsan_nicksarisht", postImage: "qabuli.png", likes: "140", comments: "54"),
                  
              ],
            ),
          ),
        ));
  }
}





// Food Post
class FoodPost extends StatelessWidget {
  final String userImage;
   final String userName;
   final String  postImage;
   final String likes;
   final String comments;
  const FoodPost({
    super.key, required this.userImage, required this.userName, required this.postImage, required this.likes, required this.comments,
  });
   

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(userImage),
              radius: 18,
            ),
          ),
          Text(
            userName,
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
          ),
        ],
    ),
    Image.asset(postImage),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
      child: Row(
        children: [
          Icon(Icons.favorite_border,size: 30,color: Colors.white,),
          Text(likes ,style: TextStyle(color: Colors.white,fontSize: 16),),
          SizedBox(width: 20,),
          Icon(Icons.mode_comment_outlined,size: 30,color: Colors.white,),
          Text(comments,style: TextStyle(color: Colors.white,fontSize: 16),),
        ],
      ),
    ), 
  
      ],
    );
  }
}
