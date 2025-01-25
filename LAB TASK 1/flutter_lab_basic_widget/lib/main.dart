import 'package:flutter/material.dart';

//Step 2: Application Structure

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic Widgets',
      home: BasicWidgetsDemo(),
    );
  }
}

class BasicWidgetsDemo extends StatefulWidget {
  const BasicWidgetsDemo({super.key});

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
      ), //Appbar

// Step 3 Implement Widgets
      body: Center(
        child: Column(children: [
          Text(
            'Welcome to Flutter Basics',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Enter your name',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                //Update UI
              });
            },
            child: Text('Submit'),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Welcome to Flutter Basic'),
                TextField(controller: _controller),
                ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: Text('Submit'))
                // setState(() {
              ]),
        ]),
      ),
    );
  }
}
