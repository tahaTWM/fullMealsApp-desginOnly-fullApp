import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(new MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Container(
          color: Colors.white,
          child: new Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 40),
            ),
            searchbox(),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            mytitle(),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            maelList(),
            Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            cardScroll2()
          ])),
    );
  }
}

Widget searchbox() {
  return new SizedBox(
      width: 360,
      height: 55,
      child: new Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 10.0, // has the effect of softening the shadow
                  spreadRadius: 1.0,
                  offset: Offset(
                    10.0, // horizontal, move right 10
                    10.0, // vertical, move down 10
                  ))
            ]),
        child: new Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10),
            ),
            new Icon(
              Icons.search,
              size: 35,
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
            ),
            Expanded(
                child: new TextField(
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                hintText: "Search for recipes and channals",
                hintStyle: TextStyle(fontSize: 16),
                border: InputBorder.none,
              ),
            ))
          ],
        ),
      ));
}

Widget mytitle() {
  return new SizedBox(
      width: 340,
      child: new Container(
          decoration: BoxDecoration(
              // color: Colors.grey,
              border: Border(
                  left: BorderSide(width: 10, color: Colors.greenAccent))),
          child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  "   Pouplar Meals",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                ),
                new Text(
                  "    This Week",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                )
              ])));
}

Widget cardScroll(String foodName, String imagePath) {
  return new Container(
      width: 250,
      // decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(50), color: Colors.purple),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10),
            ),
            new CircleAvatar(
                backgroundImage: AssetImage(imagePath), radius: 40),
            Padding(
              padding: EdgeInsets.only(left: 14),
            ),
            new Text(
              foodName,
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ));
}

Widget maelList() {
  return new Container(
      width: 400,
      height: 100,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          cardScroll("taha", "Assest/Images/logo2.jpg"),
          cardScroll("TWM", "Assest/Images/logo2.jpg"),
          cardScroll("taha", "Assest/Images/logo2.jpg"),
          cardScroll("TWM", "Assest/Images/logo2.jpg"),
        ],
      ));
}

Widget cardScroll2() {
  return new Container(
    // decoration: BoxDecoration(color: Colors.purple),
    width: 400,
    height: 430,
    child: new ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        bottomImageScroll("Assest/Images/foodDetials.jpg", "taha", "TWM"),
        new SizedBox(height: 15),
        bottomImageScroll("Assest/Images/logo2.jpg", "taha", "TWM"),
        bottomImageScroll("Assest/Images/foodDetials.jpg", "taha", "TWM"),
        new SizedBox(height: 15),
        bottomImageScroll("Assest/Images/logo2.jpg", "taha", "TWM"),
      ],
    ),
  );
}

Widget bottomImageScroll(String path, String text1, String text2) {
  return new Card(
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Text(
          text1,
          style: TextStyle(fontSize: 25),
        ),
        new Text(
          text2,
          style: TextStyle(fontSize: 30),
        ),
        Image(image: AssetImage(path), width: 400, fit: BoxFit.fill)
      ],
    ),
  );
}








// Widget foodDetailsImages(String path) {
//   return new Container(
//       width: 400,
//       height: 430,
//       color: Colors.white,
//       child: new Column(children: <Widget>[
//         new SizedBox(
//             width: 350,
//             height: 50,
//             child: new Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 new Text(
//                   "April 06",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 new Text("TODAY", style: TextStyle(fontSize: 25))
//               ],
//             )),
//         new SizedBox(
//             height: 380,
//             width: 385,
//             child:
//                 new ListView(scrollDirection: Axis.vertical, children: <Widget>[
//               Image(
//                 image: AssetImage(path),
//               ),
//               Image(
//                 image: AssetImage(path),
//               ),
//               Image(
//                 image: AssetImage(path),
//               )
//             ]))
//       ]));
// }
