import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
import '../../models/champion.dart';
import '../../widgets/header.dart';
import 'detail_view.dart';

class Timeline extends StatefulWidget {
  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(context) {
    final List<String> titles = [
      "AKALI",
      "CAMILE",
      "EZREAL",
      "IRELIA",
      "POPPY",
      "ZOE",
    ];

    final List<Widget> images = [
      Hero(
        tag: "AKALI",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            "assets/images/akali_lol.gif",
            fit: BoxFit.cover,
          ),
        ),
      ),
      Hero(
        tag: "CAMILE",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            "assets/images/camile_lol.gif",
            fit: BoxFit.cover,
          ),
        ),
      ),
      Hero(
        tag: "EZREAL",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            "assets/images/ezreal_lol.gif",
            fit: BoxFit.cover,
          ),
        ),
      ),
      Hero(
        tag: "IRELIA",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            "assets/images/irelia_lol.gif",
            fit: BoxFit.cover,
          ),
        ),
      ),
      Hero(
        tag: "POPPY",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            "assets/images/poppy_lol.gif",
            fit: BoxFit.cover,
          ),
        ),
      ),
      Hero(
        tag: "ZOE",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            "assets/images/zoe_lol.gif",
            fit: BoxFit.cover,
          ),
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: Color(0XFF7CC0FF),
      appBar: header(context, titleText: "Familicious", isAppTitle: true),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 70,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
              ),
            ),
            Expanded(
              child: Container(
                child: VerticalCardPager(
                  // textStyle: TextStyle(color : Colors.red),
                  titles: titles,
                  images: images,
                  onPageChanged: (page) {
                    // print(page);
                  },
                  onSelectedItem: (index) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailView(
                            champion:
                            championsMap[titles[index].toLowerCase()]!,
                          )),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}