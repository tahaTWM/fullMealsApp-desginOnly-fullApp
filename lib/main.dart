import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:getwidget/getwidget.dart';

void main() => runApp(new MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

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
        child: new Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 40)),
            searchbox(),
            Padding(padding: EdgeInsets.only(top: 20)),
            mytitle(),
            Padding(padding: EdgeInsets.only(top: 7)),
            maelList(),
            Padding(padding: EdgeInsets.only(top: 7)),
            cardScroll2(context),
          ],
        ),
      ),
    );
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
                    blurRadius: 12.0, // has the effect of softening the shadow
                    spreadRadius: 1.0,
                    offset: Offset(
                      3.0, // horizontal, move right 10
                      3.0, // vertical, move down 10
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
        padding: EdgeInsets.all(5),
        // decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(50), color: Colors.purple),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 10, 5),
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
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_shopping_cart_rounded,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                ),
              ],
            ),
          ),
        ));
  }

  Widget maelList() {
    return new Container(
        width: 400,
        height: 100,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            cardScroll("Cardamom Maple Salmon", "asset/Images/image1.jpg"),
            cardScroll("Al's Burmese Chicken Curry", "asset/Images/image2.jpg"),
            cardScroll("Sweet Potato and Venison Shepherd's Pie",
                "asset/Images/image3.jpg"),
            cardScroll(
                "Beef Stroganoff with Ground Beef", "asset/Images/image1.jpg"),
          ],
        ));
  }

  Widget cardScroll2(BuildContext context) {
    return new Expanded(
      child: new ListView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          bottomImageScroll("asset/Images/image3.jpg", "Cardamom Maple Salmon",
              "Roasting the pumpkin brings out the sweetness, which pairs well with the salty pancetta. This \"primo piatto,\" or first course, is simple and delicious!"),
          new SizedBox(height: 15),
          bottomImageScroll(
              "asset/Images/image2.jpg",
              "Al's Burmese Chicken Curry",
              "Ground beef makes this stroganoff sauce a quick, tasty comfort food served over noodles or mashed spuds."),
          bottomImageScroll(
              "asset/Images/image3.jpg",
              "Sweet Potato and Venison Shepherd's Pie",
              "I tried to make a copycat Popeyes® fried chicken sandwich and ended up with a hybrid between that and the one from Chick-fil-A®. So you get the best of both worlds and what's more, this DIY version never runs out, not even on Sundays."),
          new SizedBox(height: 15),
          bottomImageScroll(
              "asset/Images/image1.jpg",
              "Beef Stroganoff with Ground Beef",
              "These are such amazing Instant Pot® meatballs that will melt in your mouth the good way! Serve over noodles, rice, or on a sandwich roll!"),
        ],
      ),
    );
  }

  Widget listview() {
    return Container(
      height: 430,
      width: 430,
      color: Colors.amber,
      // child: SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //   child: Row(
      //     children: [
      //       lastItems(context, "asset/Images/image3.jpg", "title first",
      //           "subtitle first", "content first"),
      //       lastItems(context, "asset/Images/image1.jpg", "title Second",
      //           "subtitle Second", "content Second"),
      //       lastItems(context, "asset/Images/image2.jpg", "title Third",
      //           "subtitle Third", "content Third"),
      //     ],
      //   ),
      // ),
    );
  }

  Widget bottomImageScroll(String path, String text1, String text2) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 4,
                child: Text(
                  text1,
                  style: TextStyle(fontSize: 22),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_shopping_cart_rounded,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          ReadMoreText(
            text2,
            style: TextStyle(
              fontSize: 15,
            ),
            trimLines: 2,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'show more',
            trimExpandedText: 'show less',
            moreStyle: TextStyle(
              color: Colors.blue,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
            lessStyle: TextStyle(
              color: Colors.blue,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage(path),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget lastItems(BuildContext context, String imagepath, String title,
      String subtitle, String content) {
    return GFCard(
      elevation: 13,
      padding: EdgeInsets.zero,
      color: Colors.red,
      boxFit: BoxFit.cover,
      titlePosition: GFPosition.start,
      image: Image.asset(
        imagepath,
        fit: BoxFit.cover,
      ),
      showImage: true,
      title: GFListTile(
        avatar: GFAvatar(
          backgroundImage: AssetImage(imagepath),
        ),
        titleText: title,
        subTitleText: subtitle,
      ),
      content: Text(
        content,
      ),
      buttonBar: GFButtonBar(
        children: <Widget>[
          GFAvatar(
            child: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
          GFAvatar(
            backgroundColor: GFColors.DARK,
            child: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          GFAvatar(
            backgroundColor: GFColors.DANGER,
            child: Icon(
              Icons.help,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
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
