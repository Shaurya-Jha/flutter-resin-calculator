import 'package:flutter/material.dart';
import 'package:resin_try1/components/accordion.dart';

// ignore: camel_case_types
class AC100_Jesmonite extends StatelessWidget {
  const AC100_Jesmonite({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          // about the product
          Accordion(title: 'About the Product', content: 'Jesmonite AC100 is a water-based composite material used to make decorative moulded objects. It is safe to use and contains no solvents or VOCs. It can be cast and laminated using our unique Quadaxial Glass.'),

          // estimate accordion
          Accordion(title: 'Estimate', content: "Always start your project with an estimate of how much material you will use. Use the Jesmonite calculator to estimate this."),

          // mix accordion
          Accordion(title: 'Mix', content: 'Use a weighing scale to mix the base and liquid in 2.5:1 ratio by weight and mix vigorously to form a homogeneous liquid. Scrape the sides of the container to make sure the resin from the sides has mixed well with the hardener. Use a high shear mixing blade if you are mixing more than 300 grams. Use an AC 100 Retarder to increase the pot life. Add pigments according to the colour you require into the mixture (a maximum of 2% of the total weight of the mixture). \n\n *Pro Tip: Pour the liquid first and then the powder. \n *Pot life is 5 - 7 minutes, subject to weather conditions'),

          // pour accordion
          Accordion(title: 'Pour', content: 'Pour the mixture with your design preference into the mould. Once you`ve poured your jesmonite mixture in a mould, make sure you keep it in a dust free environment with no movement. The surface will be tack-free in 30 minutes and fully cured in 4 hours. You can pour a second layer after it is tack-free'),

          // wait accordion
          Accordion(title: 'Seal', content: 'De-mould the object 30 minutes after pouring, and sand / remove any excess material. Use an appropriate sealer to seal your object which will avoid staining and water absorption.'),
        ],
      ),
    );
  }
}