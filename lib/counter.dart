import 'package:app_of_apps/sidebar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  // final GlobalKey  _scaffoldKey = GlobalKey ();
  //
  // void _openDrawer() {
  //   _scaffoldKey.currentState!.openDrawer();
  // }
  //
  // void _closeDrawer() {
  //   Navigator.of(context).pop();
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldKey,
      drawer: const Drawer(

        child: SideBarWidget(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        // leading: Builder(
        //   builder: (BuildContext context) {
        //     return IconButton(
        //       icon: const Icon(Icons.menu),
        //       onPressed: () { Scaffold.of(context).openDrawer(); },
        //       tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        //     );
        //   },
        // ),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          color: Colors.transparent,
          height: 40,
          child: const Text(
            "Hello",
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontStyle: FontStyle.normal, ),
          ),
        ),
      ),
    );
  }
}
