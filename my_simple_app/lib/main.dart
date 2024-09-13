import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Creative UI App'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String buttonText = 'Click Me';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.blueAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Your Creative App!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                letterSpacing: 2.0,
                shadows: [
                  Shadow(
                    blurRadius: 10.0,
                    color: Colors.black54,
                    offset: Offset(3.0, 3.0),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  buttonText = buttonText == 'Click Me' ? 'Clicked!' : 'Click Me';
                });
                print('Button was clicked!');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,  // Background color
                foregroundColor: Colors.deepPurpleAccent,  
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                shadowColor: Colors.deepPurpleAccent,
                elevation: 10,
              ),
              child: Text(buttonText),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                    offset: Offset(5.0, 5.0),
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://th.bing.com/th/id/OIP.qQyCsC-HuGj-VPy1krUYKwHaH5?pid=ImgDet&w=185&h=197&c=7',  
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
