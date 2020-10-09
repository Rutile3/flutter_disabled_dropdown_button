import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Disabled DropdownButton Demo',
      home: MyHomePage(title: 'Disabled DropdownButton Demoe Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _value = _list.first;
  static const List<String> _list = [
    'FlatButton',
    'RaisedButton',
    'OutlineButton',
    'IconButton',
    'FloatingActionButton',
    'PopupMenuButton',
    'DropdownButton',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton(
              disabledHint: Text(_value),
            ),
          ],
        ),
      ),
    );
  }

  void _onChanged(String value) {
    setState(() {
      _value = value;
    });
  }
}
