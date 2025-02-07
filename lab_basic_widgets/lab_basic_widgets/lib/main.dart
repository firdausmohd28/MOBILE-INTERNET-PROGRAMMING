import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Step 2: Application Structure
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic Widgets',
      home: BasicWidgetsDemo(),
    );
  }
}

class BasicWidgetsDemo extends StatefulWidget {
  @override
  _BasicWidgetsDemoState createState() => _BasicWidgetsDemoState();
}

class _BasicWidgetsDemoState extends State<BasicWidgetsDemo> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),

      //Step 3: Implement Widget
      //Step 5: Enhancing the application

      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(children: [
          Text(
            'Welcome to Flutter Basics',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter Your Name',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(-200)),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              button1();
              setState(() {
                //update UI
              });
            },
            child: Text('Submit',
                style: TextStyle(fontSize: 15, color: Colors.pink)),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Text(
                  'Welcome to Flutter Basics',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink),
                ),
                TextField(controller: _controller),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    button2();
                  },
                  child: Text('Submit',
                      style: TextStyle(fontSize: 15, color: Colors.pink)),
                ),
              ]),
        ]),
      ),
    );
  }

  void button1() {
    print('Welcome!');
  }

  button2() {
    print(_controller.text);
  }
}

//show on github desktop
//show on github desktop and browser
