import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 12;
  void _increament() {
    setState(() {
      _counter++;
    });
  }

  void _decreament() {
    setState(() {
      _counter--;
    });
  }

  void _resetCount() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      _decreament();
                    },
                    child: Icon(
                      Icons.remove_circle_outline_sharp,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '$_counter',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      _increament();
                    },
                    child: Icon(
                      Icons.add_circle_outline_rounded,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  _resetCount();
                },
                child: Icon(Icons.refresh_sharp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
