import 'package:flutter/material.dart';
import 'package:noon_app/pages.dart';

import 'package:sailor/sailor.dart';

class Routes {
  static final sailor = Sailor();

  static void createRoutes() {
    sailor.addRoutes(
      [
        SailorRoute(
          name: "/Pages",
          builder: (context, args, params) => Directionality(
            textDirection: TextDirection.rtl,
            child: HomePage(),
          ),
        ),
      ],
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: widget1(),
            ),
            imageContainer(),
          ],
        ),
      ),
    );
  }
}
