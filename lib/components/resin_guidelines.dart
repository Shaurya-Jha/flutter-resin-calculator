import 'package:flutter/material.dart';
import 'package:resin_try1/components/high_gloss.dart';
import 'package:resin_try1/components/ultra_clear.dart';

class ResinGuidelines extends StatelessWidget {
  const ResinGuidelines({super.key});

  // static const List<Tab> myTabs = <Tab>[
  //   Tab(
  //     text: "High Gloss",
  //   ),
  //   Tab(
  //     text: "Ultra Gloss",
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // length: myTabs.length,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Resin Mix Process"),
          bottom: const TabBar(
            tabs: [
              Tab(text: "High Gloss",),
              Tab(text: "Ultra Clear",),
            ],
          ),
        ),
        body: const TabBarView(
          // children: myTabs.map((Tab tab) {
          //   final String label = tab.text!.toLowerCase();
          //   return Center(
          //     child: Text(
          //       'This is the $label tab',
          //       style: const TextStyle(fontSize: 36),
          //     ),
          //   );
          // }).toList(),

          children: [
            HighGloss(),
            UltraClear()
          ],
        ),
      ),
    );
  }
}
