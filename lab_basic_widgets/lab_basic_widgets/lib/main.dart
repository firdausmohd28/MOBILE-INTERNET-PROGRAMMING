import 'package:flutter/material.dart';

//Step 2: Application structure
void main() {
  runApp(const MyApp());
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
  // ignore: library_private_types_in_public_api
  _BasicWidgetsDemoState createState() => _BasicWidgetsDemoState();
}

class _BasicWidgetsDemoState extends State<BasicWidgetsDemo> {
  // ignore: prefer_final_fields
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),

      //Step 3: Implement Widgets
      body: Center(
        child: Column(children: [
          Text(
            'Welcome to Flutter Basics',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Enter your name',
              border: OutlineInputBorder(),
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
          //Column Widget
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Welcome to Flutter Basic'),
                TextField(controller: _controller),
                ElevatedButton(onPressed: () {}, child: Text('Submit')),
              ]),
        ]),
      ),
    );
  }
}
