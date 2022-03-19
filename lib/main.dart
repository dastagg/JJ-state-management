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

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // final String data = 'John Rambo';
  String data = 'Chuck Norris';

  void changeValue(String dataChanged) {
    setState(() {
      data = dataChanged;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Building MainPage');
    return Scaffold(
      appBar: AppBar(
        title: Text(data),
      ),
      body: Screen2(
        data: data,
        changeData: changeValue,
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  final String data;
  final Function(String) changeData;
  const Screen2({required this.changeData, required this.data, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building Screen2');
    return Container(
      child: Screen3(
        data: data,
        changeData: changeData,
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  final String data;
  final Function(String) changeData;
  const Screen3({required this.changeData, required this.data, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building Screen3');
    return Container(
      child: Screen4(
        data: data,
        changeData: changeData,
      ),
    );
  }
}

class Screen4 extends StatefulWidget {
  final String data;
  final Function(String) changeData;
  const Screen4({required this.changeData, required this.data, Key? key})
      : super(key: key);

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    print('Building Screen4');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.data),
          ElevatedButton(
            onPressed: () {
              setState(() {
                widget.changeData('Bruce Lee');
              });
            },
            child: const Text('Change data'),
          ),
        ],
      ),
    );
  }
}
