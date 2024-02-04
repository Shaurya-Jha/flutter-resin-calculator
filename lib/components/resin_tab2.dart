import 'dart:developer';
// import 'dart:ffi';

import 'package:flutter/material.dart';

class ResinTab2 extends StatefulWidget {
  const ResinTab2({super.key});

  @override
  State<ResinTab2> createState() => _ResinTab2State();
}

class _ResinTab2State extends State<ResinTab2> {
  /* state for the shape */
  bool _isCircleSelected = false;
  bool _isRectangleSelected = false;

  /* state for the coat or cast */
  bool _isCastSelected = false;
  bool _isCoatSelected = false;

  /* state for the 2:1 or 3:1 epoxy resin */
  bool _highGloss = false;
  bool _ultraClear = false;

  /* states to calculate the result / resin required */
  // for the circle variant
  double pi = 3.14159265;

  // for circle and coating
  var coatingDiameterController = TextEditingController();
  var coatingCircleThicknessController = TextEditingController();
  
  // for circle and casting
  var castingDiameterController = TextEditingController();
  var castingCircleHeightController = TextEditingController();

  // @override
  // void dispose() {
  //   // clean up the controller when the widget is disposed
  //   diameterController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(10.0),
      children: [
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
                      // change background color of the button on pressed / on selected
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            _isCircleSelected ? Colors.red : Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          _isCircleSelected = !_isCircleSelected;
                          _isRectangleSelected = false;
                          log('$_isCircleSelected');
                        });
                      },
                      child: Text(
                        "Circle",
                        // change the color of the button as per the background color on click / on selected
                        style: TextStyle(
                            color: _isCircleSelected
                                ? Colors.white
                                : Colors.black),
                      )),
                  ElevatedButton(
                      // change color of the button on click
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              _isRectangleSelected ? Colors.red : Colors.white),
                      onPressed: () {
                        setState(() {
                          _isRectangleSelected = !_isRectangleSelected;
                          _isCircleSelected = false;
                          log('$_isRectangleSelected');
                        });
                      },
                      child: Text(
                        "Rectangle",
                        // style: TextStyle(color: Colors.black),
                        // change color of the button text on click as per the background color
                        style: TextStyle(
                            color: _isRectangleSelected
                                ? Colors.white
                                : Colors.black),
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
                height: 60,
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      // change color of button onclick
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              _isCastSelected ? Colors.red : Colors.white),
                      onPressed: () {
                        setState(() {
                          _isCastSelected = !_isCastSelected;
                          _isCoatSelected = false;
                          log('$_isCastSelected');
                        });
                      },
                      child: Text(
                        "Casting",
                        // style: TextStyle(color: Colors.black),
                        // change the color of the text in button as per the background color
                        style: TextStyle(
                            color:
                                _isCastSelected ? Colors.white : Colors.black),
                      )),
                  ElevatedButton(
                      // change the color of the button when is selected
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              _isCoatSelected ? Colors.red : Colors.white),
                      onPressed: () {
                        setState(() {
                          _isCoatSelected = !_isCoatSelected;
                          _isCastSelected = false;
                          log('$_isCoatSelected');
                        });
                      },
                      child: Text(
                        "Coating",
                        // style: TextStyle(color: Colors.black),
                        // onclick the color of the text will change as per the background
                        style: TextStyle(
                            color:
                                _isCoatSelected ? Colors.white : Colors.black),
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
                      // high gloss button
                      onTap: () {
                        setState(() {
                          _highGloss = !_highGloss;
                          _ultraClear = false;
                        });
                      },
                      child: Ink.image(
                          width: 150,
                          height: 200,
                          image: const AssetImage('lib/images/resin.jpg')),
                    ),
                  ),
                  InkWell(
                    // ultra clear button
                    onTap: () {
                      setState(() {
                        _ultraClear = !_ultraClear;
                        _highGloss = false;
                      });
                    },
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

        const SizedBox(
          height: 20.0,
        ),

        // code for toggling input field is state is true or false

        // try - 2 with clear conditions
        // condition 1 - if circle -> coating -> highgloss == true
        if (_isCircleSelected && _isCoatSelected && _highGloss == true)
          Column(
            children: [
              const Text(
                "What are your artwork dimensions ?",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              // diameter thickness field
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  // controller to get the value from the textfield
                  controller: coatingDiameterController,

                  // to get numeric value with decimals enabled
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Enter diameter (inches)..."),
                ),
              ),

              // thickness input field
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  // controller to get the value from the textfield
                  controller: coatingCircleThicknessController,

                  // to get numeric value with decimals enabled
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Enter thickness (mm)..."),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {
                          // var radius;
                          // ignore: non_constant_identifier_names
                          double surfaceArea, radius, diameter, volume, thickness, TwoisToRatio, OneisToRatio, x;

                          // get diameter and thickness required from the textfield
                          diameter = double.parse(coatingDiameterController.text);
                          thickness = double.parse(coatingCircleThicknessController.text);

                          // convert the diameter to radius
                          radius = diameter / 2;

                          // calculate the surface area required
                          surfaceArea = pi * (radius * radius);

                          // calculate the volume
                          volume = surfaceArea * thickness;

                          // ceilVolume
                          int ceilVolume = volume.floor();
                          // volume = int.parse(volume.ceilToDouble());

                          // calculate x value
                          x = volume / 3;

                          // 2:1 ratio conversion
                          TwoisToRatio = 2 * x;
                          // ceiltwoistoratio
                          int ceiltwoistoratio = TwoisToRatio.floor();
                          OneisToRatio = 1 * x;
                          // ceiloneistoratio
                          int ceiloneistoratio = OneisToRatio.floor();

                          // calculate

                          // this will be shown when user clicks on calculate
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                height: 200,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      // title of the type
                                          const Center(
                                            child: Text("Circle Coat 2:1 High Gloss", style: TextStyle(fontSize: 22.0),),
                                          ),

                                      // gap given between cards and title
                                      const SizedBox(height: 5.0,),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          // card -1 to show 2 isto ratio
                                          Card(
                                            shadowColor: Colors.black,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 35,
                                                      vertical: 40),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    "Resin",
                                                    style: TextStyle(
                                                        fontSize: 20.0),
                                                  ),
                                                  const SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  Text("$ceiltwoistoratio gms")
                                                ],
                                              ),
                                            ),
                                          ),

                                          // card 2 - to show 1 isto ratio
                                          Card(
                                            shadowColor: Colors.black,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 35,
                                                      vertical: 40),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    "Hardener",
                                                    style: TextStyle(
                                                        fontSize: 20.0),
                                                  ),
                                                  const SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  Text("$ceiloneistoratio gms")
                                                ],
                                              ),
                                            ),
                                          ),

                                          // card -3 show total volumne required
                                          Card(
                                            shadowColor: Colors.black,
                                            color: Colors.black,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 35,
                                                      vertical: 40),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    "Total",
                                                    style: TextStyle(
                                                        fontSize: 20.0, color: Colors.white),
                                                  ),
                                                  const SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  Text("$ceilVolume gms", style: const TextStyle(color: Colors.white),)
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      )

                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: const Text(
                          "Calculate",
                          style: TextStyle(color: Colors.white),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {
                          // clear the textfield
                          coatingDiameterController.text = "";
                          coatingCircleThicknessController.text = "";
                        },
                        child: const Text(
                          "Reset",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              )
            ],
          ),

        // condition 2 - if circle -> coating -> ultraclear == true
        if (_isCircleSelected && _isCoatSelected && _ultraClear == true)
          Column(
            children: [
              const Text(
                "What are your artwork dimensions ?",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              // diameter field
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: coatingDiameterController,
                  // to get numeric value with decimals enabled
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Enter diameter (inches)..."),
                ),
              ),

              // thickness input field
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  // controller to get the value from the textfield
                  controller: coatingCircleThicknessController,

                  // to get numeric value with decimals enabled
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Enter thickness (mm)..."),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {
                          // var radius;
                          // ignore: non_constant_identifier_names
                          double surfaceArea, radius, diameter, volume, thickness, ThreeisToRatio, OneisToRatio, x;

                          // get diameter and thickness required from the textfield
                          diameter = double.parse(coatingDiameterController.text);
                          thickness = double.parse(coatingCircleThicknessController.text);

                          // convert the diameter to radius
                          radius = diameter / 2;

                          // calculate the surface area required
                          surfaceArea = pi * (radius * radius);

                          // calculate the volume
                          volume = surfaceArea * thickness;

                          // ceilVolume
                          int ceilVolume = volume.floor();
                          // volume = int.parse(volume.ceilToDouble());

                          // calculate x value
                          x = volume / 4;

                          // 2:1 ratio conversion
                          ThreeisToRatio = 3 * x;
                          // ceiltwoistoratio
                          int ceilthreeistoratio = ThreeisToRatio.floor();
                          OneisToRatio = 1 * x;
                          // ceiloneistoratio
                          int ceiloneistoratio = OneisToRatio.floor();

                          // calculate

                          // this will be shown when user clicks on calculate
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                height: 200,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      // title of the data on which the formula is applied
                                      const Center(
                                        child: Text("Circle Coat 3:1 Ultra Clear", style: TextStyle(fontSize: 20.0),),
                                      ),

                                      const SizedBox(height: 5.0,),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          // card -1 to show 2 isto ratio
                                          Card(
                                            shadowColor: Colors.black,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 35,
                                                      vertical: 40),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    "Resin",
                                                    style: TextStyle(
                                                        fontSize: 20.0),
                                                  ),
                                                  const SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  Text("$ceilthreeistoratio gms")
                                                ],
                                              ),
                                            ),
                                          ),

                                          // card 2 - to show 1 isto ratio
                                          Card(
                                            shadowColor: Colors.black,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 35,
                                                      vertical: 40),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    "Hardener",
                                                    style: TextStyle(
                                                        fontSize: 20.0),
                                                  ),
                                                  const SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  Text("$ceiloneistoratio gms")
                                                ],
                                              ),
                                            ),
                                          ),

                                          // card -3 show total volumne required
                                          Card(
                                            shadowColor: Colors.black,
                                            color: Colors.black,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 35,
                                                      vertical: 40),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    "Total",
                                                    style: TextStyle(
                                                        fontSize: 20.0, color: Colors.white),
                                                  ),
                                                  const SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  Text("$ceilVolume gms", style: const TextStyle(color: Colors.white),)
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      )

                                      // Text('$volumne'),
                                      // ElevatedButton(
                                      //   child: const Text('Close BottomSheet'),
                                      //   onPressed: () => Navigator.pop(context),
                                      // ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },

                        child: const Text(
                          "Calculate",
                          style: TextStyle(color: Colors.white),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {
                          // clear the textfield
                          coatingDiameterController.text = "";
                          coatingCircleThicknessController.text = "";
                        },
                        child: const Text(
                          "Reset",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              )
            ],
          ),

        // condition 3 - if circle -> casting -> highgloss == true
        if (_isCircleSelected && _isCastSelected && _highGloss == true)
          Column(
            children: [
              // warning if using high gloss for casting
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "WARNING: HIGH GLOSS is not recommended to be used while casting",
                  style: TextStyle(color: Colors.orange, fontSize: 20),
                ),
              ),

              // used sized box for giving gap between the widgets
              const SizedBox(
                height: 20.0,
              ),

              const Text(
                "What are your artwork dimensions ?",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              // forr diameter
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  // controller to get the value of textfield
                  controller: castingDiameterController,
                  // to get numeric value with decimals enabled
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Enter diameter (inches)..."),
                ),
              ),

              // for thickness
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  // controller to get the value of textfield
                  controller: castingCircleHeightController,
                  // to get numeric value with decimals enabled
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Enter thickness (mm)..."),
                ),
              ),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {
                          // var radius;
                          // ignore: non_constant_identifier_names
                          double radius, diameter, volume, height, TwoisToRatio, OneisToRatio, x;

                          // get diameter and thickness required from the textfield
                          diameter = double.parse(castingDiameterController.text);
                          height = double.parse(castingCircleHeightController.text);

                          // convert the diameter to radius
                          radius = diameter / 2;

                          // calculate the surface area required
                          volume = pi * (radius * radius);

                          // calculate the volume
                          double newVolume = volume * height;

                          // ceilVolume
                          int ceilVolume = newVolume.floor();
                          // volume = int.parse(volume.ceilToDouble());

                          // calculate x value
                          x = ceilVolume / 3;

                          // 2:1 ratio conversion
                          TwoisToRatio = 2 * x;
                          // ceiltwoistoratio
                          int ceiltwoistoratio = TwoisToRatio.floor();
                          OneisToRatio = 1 * x;
                          // ceiloneistoratio
                          int ceiloneistoratio = OneisToRatio.floor();

                          // calculate

                          // this will be shown when user clicks on calculate
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                height: 200,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      // title of the data on which the formula is applied
                                      const Center(
                                        child: Text("Circle Cast 2:1 Ultra Clear", style: TextStyle(fontSize: 20.0),),
                                      ),

                                      const SizedBox(height: 5.0,),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          // card -1 to show 2 isto ratio
                                          Card(
                                            shadowColor: Colors.black,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 35,
                                                      vertical: 40),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    "Resin",
                                                    style: TextStyle(
                                                        fontSize: 20.0),
                                                  ),
                                                  const SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  Text("$ceiltwoistoratio gms")
                                                ],
                                              ),
                                            ),
                                          ),

                                          // card 2 - to show 1 isto ratio
                                          Card(
                                            shadowColor: Colors.black,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 35,
                                                      vertical: 40),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    "Hardener",
                                                    style: TextStyle(
                                                        fontSize: 20.0),
                                                  ),
                                                  const SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  Text("$ceiloneistoratio gms")
                                                ],
                                              ),
                                            ),
                                          ),

                                          // card -3 show total volumne required
                                          Card(
                                            shadowColor: Colors.black,
                                            color: Colors.black,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 35,
                                                      vertical: 40),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    "Total",
                                                    style: TextStyle(
                                                        fontSize: 20.0, color: Colors.white),
                                                  ),
                                                  const SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  Text("$ceilVolume gms", style: const TextStyle(color: Colors.white),)
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      )

                                      // Text('$volumne'),
                                      // ElevatedButton(
                                      //   child: const Text('Close BottomSheet'),
                                      //   onPressed: () => Navigator.pop(context),
                                      // ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: const Text(
                          "Calculate",
                          style: TextStyle(color: Colors.white),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {

                        },
                        child: const Text(
                          "Reset",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              )
            ],
          ),

        // condition 4 - if circle -> casting -> ultraclear ==  true
        if (_isCircleSelected && _isCastSelected && _ultraClear == true)
          Column(
            children: [
              const Text(
                "What are your artwork dimensions ?",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              // for diameter
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  // to get numeric value with decimals enabled
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Enter diameter (inches)..."),
                ),
              ),

              // for thickness
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  // to get numeric value with decimals enabled
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Enter thickness (mm)..."),
                ),
              ),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {},
                        child: const Text(
                          "Calculate",
                          style: TextStyle(color: Colors.white),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {},
                        child: const Text(
                          "Reset",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              )
            ],
          ),

        // condition 5 - if rectangle -> coating -> highgloss == true
        if (_isRectangleSelected && _isCoatSelected && _highGloss == true)
          Column(
            children: [
              // used sized box for giving gap between the widgets
              // const SizedBox(height: 20.0,),

              const Text(
                "What are your artwork dimensions ?",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              // forr diameter
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  // controller: lengthController,
                  // to get numeric value with decimals enabled
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Enter length (inches)..."),
                ),
              ),

              // for thickness
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  // controller: widthController,
                  // to get numeric value with decimals enabled
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Enter width (inches)..."),
                ),
              ),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {
                          // define variables
                          // double volumne, length, width;

                          // get values of the textfield
                          // length = double.parse(lengthController.text);
                          // width = double.parse(widthController.text);

                          // calculate the volumne required
                          // volumne = length * width;

                          // alert dialog box to show the result
                          // showDialog<String>(
                          //     context: context,
                          //     builder: (BuildContext context) => AlertDialog(
                          //           title: const Text('AlertDialog Title'),
                          //           content: Text('$volumne'),
                          //           actions: <Widget>[
                          //             TextButton(
                          //               onPressed: () =>
                          //                   Navigator.pop(context, 'Cancel'),
                          //               child: const Text('Cancel'),
                          //             ),
                          //             TextButton(
                          //               onPressed: () =>
                          //                   Navigator.pop(context, 'OK'),
                          //               child: const Text('OK'),
                          //             ),
                          //           ],
                          //         ));

                          // this will be shown when user clicks on calculate
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return const SizedBox(
                                height: 200,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          // card
                                          Card(
                                            shadowColor: Colors.black,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 35,
                                                      vertical: 40),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Title",
                                                    style: TextStyle(
                                                        fontSize: 25.0),
                                                  ),
                                                  SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  Text("volumne")
                                                ],
                                              ),
                                            ),
                                          ),

                                          Card(
                                            shadowColor: Colors.black,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 35,
                                                      vertical: 40),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Title",
                                                    style: TextStyle(
                                                        fontSize: 25.0),
                                                  ),
                                                  SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  Text("volumne")
                                                ],
                                              ),
                                            ),
                                          ),

                                          Card(
                                            shadowColor: Colors.black,
                                            color: Colors.black,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 35,
                                                      vertical: 40),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Title",
                                                    style: TextStyle(
                                                        fontSize: 25.0, color: Colors.white),
                                                  ),
                                                  SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  Text("volumne", style: TextStyle(color: Colors.white),)
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      )

                                      // Text('$volumne'),
                                      // ElevatedButton(
                                      //   child: const Text('Close BottomSheet'),
                                      //   onPressed: () => Navigator.pop(context),
                                      // ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: const Text(
                          "Calculate",
                          style: TextStyle(color: Colors.white),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {},
                        child: const Text(
                          "Reset",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              )
            ],
          ),

        // condition 6 - if rectangle -> coating -> ultraclear == true
        if (_isRectangleSelected && _isCoatSelected && _ultraClear == true)
          Column(
            children: [
              // used sized box for giving gap between the widgets
              // const SizedBox(height: 20.0,),

              const Text(
                "What are your artwork dimensions ?",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              // forr diameter
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  // to get numeric value with decimals enabled
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Enter length (inches)..."),
                ),
              ),

              // for thickness
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  // to get numeric value with decimals enabled
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Enter width (mm)..."),
                ),
              ),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {},
                        child: const Text(
                          "Calculate",
                          style: TextStyle(color: Colors.white),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {},
                        child: const Text(
                          "Reset",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              )
            ],
          ),

        // condition 7 - if rectangle -> casting -> highgloss == true
        if (_isRectangleSelected && _isCastSelected && _highGloss == true)
          Column(
            children: [
              // warning if using high gloss for casting
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "WARNING: HIGH GLOSS is not recommended to be used while casting",
                  style: TextStyle(color: Colors.orange, fontSize: 20),
                ),
              ),

              // used sized box for giving gap between the widgets
              const SizedBox(
                height: 20.0,
              ),

              const Text(
                "What are your artwork dimensions ?",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              // for diameter
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  // to get numeric value with decimals enabled
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Enter length (inches)..."),
                ),
              ),

              // for thickness
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  // to get numeric value with decimals enabled
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Enter width (mm)..."),
                ),
              ),

              // for thickness
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  // to get numeric value with decimals enabled
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Enter width (mm)..."),
                ),
              ),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {},
                        child: const Text(
                          "Calculate",
                          style: TextStyle(color: Colors.white),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {},
                        child: const Text(
                          "Reset",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              )
            ],
          ),

        // condition 8 - if rectangle -> casting -> ultraclear ==  true
        if (_isRectangleSelected && _isCastSelected && _ultraClear == true)
          Column(
            children: [
              // used sized box for giving gap between the widgets
              // const SizedBox(height: 20.0,),

              const Text(
                "What are your artwork dimensions ?",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              // for diameter
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  // to get numeric value with decimals enabled
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Enter length (inches)..."),
                ),
              ),

              // for thickness
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  // to get numeric value with decimals enabled
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Enter width (mm)..."),
                ),
              ),

              // for thickness
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  // to get numeric value with decimals enabled
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Enter width (mm)..."),
                ),
              ),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {},
                        child: const Text(
                          "Calculate",
                          style: TextStyle(color: Colors.white),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {},
                        child: const Text(
                          "Reset",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              )
            ],
          ),
      ],
    );
  }
}
