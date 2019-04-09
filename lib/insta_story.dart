import 'package:flutter/material.dart';

class InstaStory extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "Stories",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: <Widget>[
          Icon(Icons.play_arrow),
          Text("Watch All", style: TextStyle(fontWeight: FontWeight.bold))
        ],
      )
    ],
  );

  final stories = Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) => Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://pbs.twimg.com/media/Dh-nnbPUYAAGcQ_.jpg"),
                      )),
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                ),
                index == 0
                    ? Positioned(
                        right: 10,
                        child: CircleAvatar(
                          backgroundColor: Colors.blueAccent,
                          radius: 10,
                          child: Icon(Icons.add, size: 14, color: Colors.white),
                        ),
                      )
                    : Container()
              ],
            ),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // topText,
            stories,
          ],
        ));
  }
}
