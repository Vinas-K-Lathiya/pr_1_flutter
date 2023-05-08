import 'package:flutter/material.dart';

import 'first.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: Home()),
  );
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3d393c),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Liquor Shop",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xfff1c988),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "we thouht. why not finish ballantine's in\nbourborn barrels. so we finished ballantine\nin bourborn barrels",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(13),
              child: Stack(
                children: [
                  Image(
                    image: AssetImage(
                      "asset/1img.jpeg",
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 2,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 24,
                            right: 20,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => first(),),);
                            },
                            child: Icon(
                              Icons.arrow_forward,
                              size: 35,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
