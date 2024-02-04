import 'package:flutter/material.dart';
import 'package:resin_try1/components/ac100_jesmonite.dart';
import 'package:resin_try1/components/ac730_jesmonite.dart';

class JesmoniteGuidelines extends StatelessWidget {
  const JesmoniteGuidelines({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // length: myTabs.length,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Jesmonite Mix Process"),
          bottom: const TabBar(
            tabs: [
              Tab(text: "AC100",),
              Tab(text: "AC730",),
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
            AC100_Jesmonite(),
            AC730_Jesmonite()
          ],
        ),
      ),
    );
  }
}