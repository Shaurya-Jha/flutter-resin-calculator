import 'package:flutter/material.dart';
import 'package:resin_try1/components/accordion.dart';

class UltraClear extends StatelessWidget {
  const UltraClear({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          // estimate accordion
          Accordion(title: 'Estimate', content: 'Always start your project with an estimate of how much material you will use. Use the resin calculator to estimate this, with reference to the shape and thickness of your pour. If it is an irregular shape, make it into the closest geometrical shape for the estimate'),

          // mix accordion
          Accordion(title: 'Mix', content: 'Use a weighing scale to mix the resin and hardener in a 3:1 ratio by weight and mix vigorously to form a homogeneous liquid. Scrape the sides of the container to make sure the resin from the sides has mixed well with the hardener. Pour resin in the center and spread outward with a stick. Once poured on a flat surface, you`ll get a work time of about an hour, subject to weather and shape of container mixed in. \n\n *Pro Tip: Pour the hardener first and then the resin. \n *Pot life is 10 - 15 minutes, subject to weather conditions'),

          // pour accordion
          Accordion(title: 'Pour', content: 'Once you`ve poured your resin, make sure you keep it in a dust free enviroment with less or no movement. The surface will be tack-free in 6-8 hours and fully cured in 24 hours. You can pour a second layer after it is tack-free. You can add pigments after step 2 to the mixture and pour into different mugs. \n\n *Pro Tip: Avoid using narrow containers, or the mixture may overheat'),

          // wait accordion
          Accordion(title: 'Wait', content: 'Epoxy resin is all about control. If you let the Haksons Ultra Clear sit for about 60 minutes, it`ll become slightly thicker which will give you a very good control. As you keep it for longer, you will get better control and lacing. The Haksons Ultra Clear can allow a working time of almost 2 hours in the container and 4-5 hours on the canvas surface.'),
        ],
      ),
    );
  }
}