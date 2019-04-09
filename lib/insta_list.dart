import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/insta_story.dart';

class InstaList extends StatelessWidget {
  var feedpic = Flexible(
    fit: FlexFit.loose,
    child: Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgfeEiVdRaGkW58WkvPzjb-m2j-7EAZ5ZjeV51OEemSRqW7ktKdA",
      fit: BoxFit.cover,
    ),
  );

  var topRow = Row(
    children: <Widget>[
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://pbs.twimg.com/media/Dh-nnbPUYAAGcQ_.jpg"),
            )),
      ),
      SizedBox(
        width: 10,
      ),
      Text("pratik037", style: TextStyle(fontWeight: FontWeight.bold))
    ],
  );
  var more = IconButton(
    icon: Icon(Icons.more_vert),
    onPressed: () {},
  );
  @override
  Widget build(BuildContext context) {
    var DeviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              child: InstaStory(),
              height: DeviceSize.height * 0.10,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 8, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      topRow,
                      more,
                    ],
                  ),
                ),
                feedpic,

                Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                      children:  <Widget>[
                      Icon(
                        FontAwesomeIcons.heart
                      ),
                      SizedBox(width: 16,),
                      Icon(
                        FontAwesomeIcons.comment
                      ),
                      SizedBox(width: 16,),
                      Icon(
                        FontAwesomeIcons.paperPlane
                      ),
                    ],
                      ),
                      Icon(FontAwesomeIcons.bookmark),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Liked By"
                      ),
                      Text(" pratik037,ayushshekhar17",style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(" and"),
                      Text(" 25,010 others", style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("pratik037", style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15
                            ),),
                            SizedBox(width: 5),
                            Text("My reaction on seeing the instagram clone")
                          ],
                        ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: Text("View All 1000 Comments", style: TextStyle(
                    color: Colors.grey,
                  )),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(16, 8, 0, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 40,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage("https://pbs.twimg.com/media/Dh-nnbPUYAAGcQ_.jpg")
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comment..."
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("10 days ago", style: TextStyle(color: Colors.grey, fontSize: 13 ) ),
                )
              ],
            ),
    );
  }
}
