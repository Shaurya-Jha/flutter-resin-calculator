// code for the accordion - see the mixing process

import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  // title and text for the accordion
  final String title;
  final String content;

  const Accordion({super.key, required this.title, required this.content});

  @override
  State<Accordion> createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  // show or hide the content
  bool _showContent = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      color: Colors.black,
      child: Column(
        children: [
          // the title
          ListTile(
            title: Text(widget.title, style: const TextStyle(color: Colors.white,),),
            trailing: IconButton(
                onPressed: () {
                  setState(() {
                    _showContent = !_showContent;
                  });
                },
                icon: Icon(_showContent
                    ? Icons.arrow_drop_up
                    : Icons.arrow_drop_down), color: Colors.white,),
                    
          ),

          // if not worrking anywhere else paste here the code for the content
          // show content based on the state
          _showContent ? Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),

            child: Text(widget.content, style: const TextStyle(color: Colors.white, fontSize: 14,  wordSpacing: 2),),
          )
          :Container()
        ],
      ),
    );
  }
}
