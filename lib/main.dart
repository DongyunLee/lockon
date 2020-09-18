import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: Theme.of(context),
      title: '碌客 - 繁杂生活的梳理者',
      home: MyHomePage(title: 'Lockon.Life', subTitle: '繁杂生活的梳理者'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.subTitle}) : super(key: key);

  final String title;
  final String subTitle;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 249, 253, 1),
      appBar: AppBar(
        title: Text(
          'Looker.Life',
          style: TextStyle(
            color: Color.fromRGBO(3, 254, 221, 1),
          ),
        ),
        backgroundColor: Color.fromRGBO(28, 23, 105, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '碌客',
              style: TextStyle(
                fontSize: 99.9,
                color: Color.fromRGBO(236, 56, 88, 1),
              ),
            ),
            Container(
              height: 30,
            ),
            Text(
              widget.subTitle,
              style: TextStyle(
                fontSize: 33.3,
                color: Color.fromRGBO(251, 152, 79, 1),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            activeIcon: Icon(Icons.hourglass_full),
            title: Text(
              '我的房间',
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              '发现',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.open_with),
        tooltip: '点击开始记录',
        onPressed: () => {

        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
