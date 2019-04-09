import 'package:flutter/material.dart';
import 'package:instagram_clone/insta_body.dart';

class InstaHome extends StatelessWidget {

  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    // centerTitle: true,
    elevation: 1.0,
    leading: new Icon(Icons.camera_alt,),
    title: SizedBox(
      height: 35.0,
      child: Image.asset("assets/images/insta_logo.png"),
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: InstaBody(),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50.0,
        // alignment: Alignment.center,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
               IconButton(
                icon: Icon(Icons.home, size: 35,),
                onPressed: (){},
              ),
               IconButton(
                icon: Icon(Icons.search, size: 35,),
                onPressed: (){},
              ),
               IconButton(
                icon: Icon(Icons.add_circle_outline,size: 35,),
                onPressed: (){},
              ),
               IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: (){},
              ),
               IconButton(
                icon: Container(
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage("https://pbs.twimg.com/media/Dh-nnbPUYAAGcQ_.jpg"),
                  ),
                ),
                onPressed: (){},
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}