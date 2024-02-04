import 'package:flutter/material.dart';
// import 'package:resin_try1/components/data_page.dart';

class JesmoniteTab extends StatelessWidget {
  const JesmoniteTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Card(
              margin: const EdgeInsets.all(16.0),
              color: Colors.black,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      "What Jesmonite product are you using?",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "Depending on the jesmonite used, the amount of total material needed will change.",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "AC100",
                            style: TextStyle(color: Colors.black),
                          )),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "AC730",
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
