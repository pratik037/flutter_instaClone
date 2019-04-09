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
                  child: Text(
                    "Liked By pratik037,ayushshekhar17 and 25,010 others"),
                )
              ],
            ),
    );
  }
}
