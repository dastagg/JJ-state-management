import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  // final String data = 'John Rambo';
  final String data = 'Chuck Norris';
  const MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building MainPage');
    return Scaffold(
      appBar: AppBar(
        title: Text(data),
      ),
      body: Screen2(data: data),
    );
  }
}

class Screen2 extends StatelessWidget {
  final String data;
  const Screen2({required this.data, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building Screen2');
    return Container(
      child: Screen3(data: data),
    );
  }
}

class Screen3 extends StatelessWidget {
  final String data;
  const Screen3({required this.data, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building Screen3');
    return Container(
      child: Screen4(data: data),
    );
  }
}

class Screen4 extends StatelessWidget {
  final String data;
  const Screen4({required this.data, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building Screen4');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(data),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Change data'),
          ),
        ],
      ),
    );
  }
}
