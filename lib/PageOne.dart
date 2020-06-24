import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            child: Text("N"),
          ),
        ),
        title: Text("Memories"),
        centerTitle: true,
        elevation: 20,
        backgroundColor: Colors.blue.shade900,
      ),
      backgroundColor: Color(0xffbdbdbd),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.blue.shade900,
              Colors.blue.shade800,
              Colors.blue.shade400
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),

            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Our Beloved,",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).textScaleFactor * 10
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "We will always miss you",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).textScaleFactor * 8,
                      color: Colors.white
                    ),
                  ),
                ],
              )
            ),

            SizedBox(height: 30),

            Expanded(
              child: Container( 
                decoration: BoxDecoration(
                  color: Color(0xffD4F1F4),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50),),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Body(),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin{
  List<String> imgs = [
    "assets/img1.jpg",
    "assets/img2.jpg",
    "assets/img3.jpg",
    "assets/img4.jpg",
    "assets/img5.jpg",
    "assets/img6.jpg",
    "assets/img7.jpg",
    "assets/img8.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    CardController controller;

    return Center(
      child: Stack(
        children: [
          Container(
            child: Center(
              child: Card(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1, right: MediaQuery.of(context).size.width * 0.1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Go back and press PHOTOS button again to see photos.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).textScaleFactor * 10,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ),
            ),
          ),

          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            child: TinderSwapCard(
              orientation: AmassOrientation.BOTTOM,
              totalNum: imgs.length,
              stackNum: 3,
              swipeEdge: 4.0,
              maxWidth: MediaQuery.of(context).size.width * 0.9,
              maxHeight: MediaQuery.of(context).size.height * 0.9,
              minHeight: MediaQuery.of(context).size.height * 0.8,
              minWidth: MediaQuery.of(context).size.width * 0.8,
              cardBuilder: (context, index) {
                return Card (child: Image.asset('${imgs[index % imgs.length]}'),);
              },
              cardController: controller = CardController(),
            ),
          ),
        ],
      ),
    );
  }
}