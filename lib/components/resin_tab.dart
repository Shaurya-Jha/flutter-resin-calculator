import 'dart:developer';

import 'package:flutter/material.dart';
// import 'package:resin_try1/components/data_page.dart';

class ResinTab extends StatefulWidget {
  const ResinTab({super.key});

  @override
  State<ResinTab> createState() => _ResinTabState();
}

class _ResinTabState extends State<ResinTab> {
  // desclaring state
  bool _isCircleSelected = false;
  bool _isRectangleSelected = false;
  
  bool _isCastSelected = false;
  bool _isCoatSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: <Widget>[
            // shape card - row 1
            Card(
              margin: const EdgeInsets.all(16.0),
              color: Colors.black,
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                    child: ListTile(
                      title: Text(
                        "What shape is your resin artwork?",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Center(
                          child: Text(
                        "Depending on the shape of the resin, the amount of total material needed will change",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _isCircleSelected = !_isCircleSelected;
                              log('$_isCircleSelected');
                            });
                            
                          },
                          child: const Text(
                            "Circle",
                            style: TextStyle(color: Colors.black),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _isRectangleSelected = !_isRectangleSelected;
                              log('$_isRectangleSelected');
                            });
                          },
                          child: const Text(
                            "Rectangle",
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  )
                ],
              ),
            ),

            // coat or cast card - row 2
            Card(
              margin: const EdgeInsets.all(16.0),
              color: Colors.black,
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                    child: ListTile(
                      title: Text(
                        "Are you going to coat or cast with your resin and harddener? What are your artwork dimensions?",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Center(
                          child: Text(
                        "Castings are any resin pours more than 1mm. Coating is when you are coating it with resin",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _isCastSelected = !_isCastSelected;
                              log('$_isCastSelected');
                            });
                          },
                          child: const Text(
                            "Casting",
                            style: TextStyle(color: Colors.black),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _isCoatSelected = !_isCoatSelected;
                              log('$_isCoatSelected');
                            });
                          },
                          child: const Text(
                            "Coating",
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  )
                ],
              ),
            ),

            Card(
              margin: const EdgeInsets.all(16.0),
              color: Colors.black,
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                    child: ListTile(
                      title: Text(
                        "Which type of Epoxy Resin Hardener are you using?",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: InkWell(
                          onTap: () {},
                          child: Ink.image(
                              width: 150,
                              height: 200,
                              image: const AssetImage('lib/images/resin.jpg')),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Ink.image(
                            width: 150,
                            height: 200,
                            image: const AssetImage('lib/images/resin.jpg')),
                      ),
                    ],
                  )
                ],
              ),
            ),

            // const Column(
            //   children: [
            //     TextField(),
            //     TextField(),
            //   ],
            // )

            // Card(
            //   margin: const EdgeInsets.all(16.0),
            //   color: Colors.black,
            //   child: Column(
            //     children: [
            //       const SizedBox(
            //         height: 60,
            //         child: ListTile(
            //           title: Center(
            //               child: Text(
            //             "Are you going to coat or cast with your resin and hardener? What are your artwork dimensions?",
            //             style: TextStyle(color: Colors.white),
            //           )),
            //           subtitle: Center(
            //               child: Text(
            //             "Castings are any resin pours more than 1mm. Coating is when you are coating it with resin",
            //             style: TextStyle(color: Colors.white),
            //           )),
            //         ),
            //       ),
            //       const SizedBox(height: 20,),
            //       ButtonBar(
            //         alignment: MainAxisAlignment.center,
            //         children: [
            //           ElevatedButton(
            //               onPressed: () {},
            //               child: const Text(
            //                 "click me 1",
            //                 style: TextStyle(color: Colors.black),
            //               )),
            //           ElevatedButton(
            //               onPressed: () {},
            //               child: const Text(
            //                 "click me 2",
            //                 style: TextStyle(color: Colors.black),
            //               ))
            //         ],
            //       )
            //     ],
            //   ),
            // ),

            // Card(
            //   margin: const EdgeInsets.all(16.0),
            //   color: Colors.black,
            //   child: Column(
            //     children: [
            //       const ListTile(
            //         title: Center(
            //             child: Text(
            //           "Some title",
            //           style: TextStyle(color: Colors.white),
            //         )),
            //         subtitle: Center(
            //             child: Text(
            //           "Subtitle",
            //           style: TextStyle(color: Colors.white),
            //         )),
            //       ),
            //       ButtonBar(
            //         alignment: MainAxisAlignment.center,
            //         children: [
            //           ElevatedButton(
            //               onPressed: () {},
            //               child: const Text(
            //                 "click me 1",
            //                 style: TextStyle(color: Colors.black),
            //               )),
            //           ElevatedButton(
            //               onPressed: () {},
            //               child: const Text(
            //                 "click me 2",
            //                 style: TextStyle(color: Colors.black),
            //               ))
            //         ],
            //       )
            //     ],
            //   ),
            // ),

            // Card(
            //     child: ListTile(
            //   title: Text("resin title 1"),
            //   subtitle: Text("resin subtitle 1"),
            // )),
            // Card(
            //     child: ListTile(
            //   title: Text("resin title 2"),
            //   subtitle: Text("resin subtitle 2"),
            // )),
            // Card(
            //     child: ListTile(
            //   title: Text("resin title 3"),
            //   subtitle: Text("resin subtitle 3"),
            // )),
            // Card(
            //     child: ListTile(
            //   title: Text("resin title 4"),
            //   subtitle: Text("resin subtitle 4"),
            // )),
          ],
        ),
      ),
    );
  }

void calculateResin (){}

}


