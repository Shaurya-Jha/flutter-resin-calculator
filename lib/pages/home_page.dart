import 'package:flutter/material.dart';
import 'package:resin_try1/components/jesmonite_tab.dart';
// use this if the resintab2 doesn't work
// import 'package:resin_try1/components/resin_tab.dart';
import 'package:resin_try1/components/resin_tab2.dart';
import 'package:resin_try1/pages/mix_process.dart';
// import 'package:resin_try1/components/tabs.dart';
// import 'package:resin_try1/pages/mix_process.dart';

class HomePage extends StatefulWidget {
  // final List<String> items;
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // var items;
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Padding(
    //       padding: EdgeInsetsDirectional.only(top: 10, bottom: 5),
    //       child: Text(
    //         "Resin calculator",
    //         style: TextStyle(
    //           color: Colors.white,
    //         ),
    //       ),
    //     ),
    //     backgroundColor: Colors.black,
    //     actions: <Widget>[
    //       IconButton(
    //           icon: const Icon(
    //             Icons.book_rounded,
    //             color: Colors.white,
    //           ),
    //           onPressed: () {
    //             Navigator.push(
    //               context,
    //               MaterialPageRoute(builder: (context) => const MixProcess()),
    //             );
    //           })
    //     ],
    //   ),
    
    // body: const MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: TitleTabBar(),
    // ),
    // );

    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Resin Calculator", style: TextStyle(color: Colors.white),),
          
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MixProcess()),
                );
              }, 
              icon: const Icon(Icons.question_mark_rounded, color: Colors.white,)
            )
          ],

          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: "Resin",),
              Tab(text: "Jesmontie",),
            ]
          ),
        ),

        body: const TabBarView(
          children: [
            // ResinTab(),
            ResinTab2(),
            JesmoniteTab(),
          ]
        ),
      )
    );
  }
}
