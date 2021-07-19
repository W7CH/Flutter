import 'package:flutter/material.dart';
import 'package:xylophone/main.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        /*width: size.width,
          height: size.height,*/
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xffe1eec3),
              Color(0xfff05053),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 50,
              height: 60,
              left: 158,
              width: 60,
              child: Material(
                color: Color.fromRGBO(255, 255, 255, 0.0),
                child: Image.asset('images/sticks1.png'),
              ),
            ),
            Positioned(
              top: 35,
              height: 120,
              right: 20,
              width: 120,
              child: Material(
                color: Color.fromRGBO(255, 255, 255, 0.0),
                child: Image.asset('images/symbols.png'),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2,
              height: 100,
              left: 20,
              width: 170,
              child: Material(
                color: Color.fromRGBO(255, 255, 255, 0.0),
                child: Image.asset('images/symbols1.png'),
              ),
            ),
            /*Align(
              alignment: Alignment.bottomCenter,
              child: Material(
                color: Color.fromRGBO(255, 255, 255, 0.0),
                child: Container(
                  height: 48,
                  width: 50,
                  child: Image.asset('images/Sol.png'),
                ),
              ),
            ),*/
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 200,
                height: 200,
                child: Image.asset('images/icon.webp'),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.black12),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => XylophoneApp()),
                  );
                },
                child: Text(
                  "Let's Start",
                  style: TextStyle(
                      fontSize: 20.5,
                      fontFamily: 'Pacifico',
                      foreground: Paint()
                        ..color = Colors.white70
                        ..strokeWidth = 0.8
                        ..style = PaintingStyle.stroke),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
