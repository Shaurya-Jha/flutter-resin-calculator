import 'package:flutter/material.dart';
import 'package:resin_try1/components/jesmonite_guidelines.dart';
import 'package:resin_try1/components/resin_guidelines.dart';
// import 'package:resin_try1/components/high_gloss.dart';
// import 'package:resin_try1/components/ultra_clear.dart';
// import 'package:resin_try1/components/accordion.dart';

class MixProcess extends StatelessWidget {
  const MixProcess({super.key});

  @override
  Widget build(BuildContext context) {
    // try 1 for help section
    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.black,
    //     // Leading widget for the back button
    //     leading: IconButton(
    //       icon: const Icon(Icons.arrow_back, color: Colors.white,),
    //       onPressed: () {
    //         // Navigate back to the previous screen
    //         Navigator.pop(context);
    //       },
    //     ),
    //   ),

    //   body: const Column(
    //     children: [
    //       Accordion(title: 'section - 1', content: "Some detail",),
    //       Accordion(title: 'section - 1', content: "Some detail",),
    //     ],
    //   ),
    // );

    // try - 2 for the help / how to mix section
    // return DefaultTabController(
    //   length: 2,
    //   child: Scaffold(
    //     appBar: AppBar(
    //       leading: IconButton(onPressed: (){
    //         Navigator.pop(context);
    //       },
    //       icon: const Icon(Icons.arrow_back, color: Colors.white,)
    //     ),
    //       title: const Padding(
    //         padding: EdgeInsets.fromLTRB(120, 0, 0 ,0),
    //         child: Text("Help", style: TextStyle(color: Colors.white),),
    //       ),
    //       backgroundColor: Colors.black,
    //       bottom: const TabBar(
    //         labelColor: Colors.white,
    //         // color for the selected tab
    //         unselectedLabelColor: Colors.grey,

    //         // color for the indicator below the selected the tab
    //         indicatorColor: Colors.white,
    //         tabs: [
    //           // resin tab
    //           Tab(text: "High Gloss",),
    //           Tab(text: "Ultra Clear",),
    //         ],
    //       ),
    //     ),

    //     body: const TabBarView(
    //       children: [
    //         HighGloss(),
    //         UltraClear(),
    //       ]
    //     ),
    //   )
    // );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        backgroundColor: Colors.black,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 120),
          child: Text(
            "Help",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
        Center(
          child: GestureDetector(
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ResinGuidelines()))
            },
            child: const SizedBox(
              height: 250,
              width: 500,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Card(
                  // surfaceTintColor: Colors.black,
                  color: Colors.black,
                  elevation: 15,
                  child: Center(child: Text("Resin Process", style: TextStyle(fontSize: 30, color: Colors.white),)),
                ),
              ),
            ),
          ),
        ),

        Center(
          child: GestureDetector(
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const JesmoniteGuidelines()))
            },
            child: const SizedBox(
              height: 250,
              width: 500,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Card(
                  color: Colors.black,
                  elevation: 15,
                  child: Center(child: Text("Jesmonite Process", style: TextStyle(fontSize: 30, color: Colors.white),)),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
