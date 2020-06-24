import 'package:flutter/material.dart';
import 'colors.dart';


class AboutPage extends StatelessWidget {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              TopBar(),
              SizedBox(height: 25,),

              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/img1.jpg",
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),

                        SizedBox(width: 5),

                        Column(
                          children: [
                            Text(
                              "BISHAMBRI DEVI",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).textScaleFactor * 8,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),

                            Text(
                              "(1951 - 2020)",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).textScaleFactor * 5,
                                fontStyle: FontStyle.italic,
                                color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ],
                    ),

                    Divider(
                      thickness: 1,
                      color: Colors.black54
                    ),

                    Text(
                      "Whatever happened, happened for the good. Whatever is happening, is happening for the good. Whatever will happen, will also happen for the good.",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).textScaleFactor * 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),

                    SizedBox(height: 4),

                    Text(
                      "The soul is neither born, and nor does it die.",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).textScaleFactor * 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),

                    SizedBox(height: 4),

                    Text(
                      "When meditation is mastered, the mind is unwavering like the flame of a lamp in a windless place.",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).textScaleFactor * 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),

                    SizedBox(height: 4),

                    Text(
                      "A person can rise through the efforts of his own mind; or draw himself down, in the same manner. Because each person is his own friend or enemy.",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).textScaleFactor * 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        height: 250.0,
      ),
      painter: CurvePainter(),
    );
  }
}

class CurvePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
  Path path = Path();
  Paint paint = Paint();


  path.lineTo(0, size.height *0.75);
  path.quadraticBezierTo(size.width* 0.10, size.height*0.70, size.width*0.17, size.height*0.90);
  path.quadraticBezierTo(size.width*0.20, size.height, size.width*0.25, size.height*0.90);
  path.quadraticBezierTo(size.width*0.40, size.height*0.40, size.width*0.50, size.height*0.70);
  path.quadraticBezierTo(size.width*0.60, size.height*0.85, size.width*0.65, size.height*0.65);
  path.quadraticBezierTo(size.width*0.70, size.height*0.90, size.width, 0);
  path.close();

  paint.color = colorThree;
  canvas.drawPath(path, paint);

  path = Path();
  path.lineTo(0, size.height*0.50);
  path.quadraticBezierTo(size.width*0.10, size.height*0.80, size.width*0.15, size.height*0.60);
  path.quadraticBezierTo(size.width*0.20, size.height*0.45, size.width*0.27, size.height*0.60);
  path.quadraticBezierTo(size.width*0.45, size.height, size.width*0.50, size.height*0.80);
  path.quadraticBezierTo(size.width*0.55, size.height*0.45, size.width*0.75, size.height*0.75);
  path.quadraticBezierTo(size.width*0.85, size.height*0.93, size.width, size.height*0.60);
  path.lineTo(size.width, 0);
  path.close();

  paint.color = colorTwo;
  canvas.drawPath(path, paint);

  path =Path();
  path.lineTo(0, size.height*0.75);
  path.quadraticBezierTo(size.width*0.10, size.height*0.55, size.width*0.22, size.height*0.70);
  path.quadraticBezierTo(size.width*0.30, size.height*0.90, size.width*0.40, size.height*0.75);
  path.quadraticBezierTo(size.width*0.52, size.height*0.50, size.width*0.65, size.height*0.70);
  path.quadraticBezierTo(size.width*0.75, size.height*0.85, size.width, size.height*0.60);
  path.lineTo(size.width, 0);
  path.close();

  paint.color = colorOne;
  canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }

}