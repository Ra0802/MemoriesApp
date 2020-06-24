import 'package:flutter/material.dart';
import 'bhagwad.dart';
import 'PageOne.dart';
import 'aboutpage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
      body: SingleChildScrollView(
          child: Container(
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
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 80),

              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Here",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).textScaleFactor * 15,
                        fontWeight: FontWeight.bold
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "This is made in beloved memory of nani ji",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).textScaleFactor*5,
                        color: Colors.white
                      ),
                    ),
                  ],
                )
              ),

              SizedBox(height: 80),

              Flexible(
                fit: FlexFit.loose,
                child: Container( 
                  decoration: BoxDecoration(
                    color: Color(0xffD4F1F4),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(80), topRight: Radius.circular(80),),
                  ),
                  child: Body()
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final Quotes q = new Quotes();

  void inc_quote() {
    setState(() {
      q.SetQuoteNo();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(height: 0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/old_man.png"),
            Image.asset("assets/old_woman.png")
          ],
        ),

        Divider(
          thickness: 1,
          indent: 25,
          endIndent: 25,
          color: Colors.black54
        ),

        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              q.qoutes[q.quote_no],
              style: TextStyle(
                fontSize: MediaQuery.of(context).textScaleFactor * 10,
                fontStyle: FontStyle.italic,
                color: Colors.white
              ),
              overflow: TextOverflow.fade,
            ),
          ),

          elevation: 20,
          margin: EdgeInsets.only(left: 25, right: 25),
          color: Colors.blue.shade800,
        ),

        Divider(
          thickness: 1,
          indent: 150,
          endIndent: 150,
          color: Colors.black54
        ),

        RawMaterialButton(
          elevation: 20,
          fillColor: Colors.blue.shade800,
          onPressed: inc_quote,
          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.5, minHeight: MediaQuery.of(context).size.height * 0.08),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Read Next",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).textScaleFactor * 10,
                      color: Colors.white
                    ),
                    overflow: TextOverflow.fade
                  ),

                  SizedBox(width: 2),

                  Image.asset("assets/page.png", height: 15, width: 15)
                ],
              ),
            ),
          ),
        ),

        Divider(
          thickness: 1,
          indent: 150,
          endIndent: 150,
          color: Colors.black54
        ),
        
        RawMaterialButton(
          elevation: 20,
          fillColor: Colors.blue.shade800,
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new PageOne()));
          },
          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.5, minHeight: MediaQuery.of(context).size.height * 0.08),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Photos",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).textScaleFactor * 10,
                      color: Colors.white
                    ),
                    overflow: TextOverflow.fade
                  ),

                  SizedBox(width:2),

                  Image.asset("assets/pic.png", height: 15, width: 15)
                ],
              ),
            ),
          ),
        ),

        Divider(
          thickness: 1,
          indent: 150,
          endIndent: 150,
          color: Colors.black54
        ),
        
        RawMaterialButton(
          elevation: 20,
          fillColor: Colors.blue.shade800,
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new AboutPage()));
          },
          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.5, minHeight: MediaQuery.of(context).size.height * 0.08),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "About Nani Ji",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).textScaleFactor * 10,
                      color: Colors.white
                    ),
                    overflow: TextOverflow.fade
                  ),

                  SizedBox(width: 2),

                  Image.asset(
                    "assets/about.png",
                    height: 15,
                    width: 15,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}