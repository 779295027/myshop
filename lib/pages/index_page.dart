import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _IndexPageState();
  }
}

class _IndexPageState extends State<IndexPage> {
  var _currentIndex = 0;
  final List<BottomNavigationBarItem> list = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
    BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("分类")),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart), title: Text("购物车")),
    BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("会员中心")),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      items: list,
    );
  }

  void _onTapHandler(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
