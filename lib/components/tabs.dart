import 'package:flutter/material.dart';
import 'package:resin_try1/components/jesmonite_tab.dart';
import 'package:resin_try1/components/resin_tab.dart';

class TitleTabBar extends StatelessWidget {
  const TitleTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: "Resin",),
                Tab(text: "Jesmonite",),
            ]),
            // title: Text("Choose one"),
          ),

          body: const TabBarView(children: <Widget>[
            ResinTab(),
            JesmoniteTab(),
          ]),

          // body: const TabBarView(
          //   children: <Widget>[

          //     ResinTab(),
          //     JesmoniteTab(),

          //     // DataPage(
          //     //   dataTitle: "hello",
          //     //   dataSubtitle: "subtitle",
          //     // ),

          //     // DataPage(
          //     //   dataTitle: "title",
          //     //   dataSubtitle: "subtitle",
          //     // ),
          //   ]),
        )
        ),
    );
  }
}