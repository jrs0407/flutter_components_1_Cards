import 'package:flutter/material.dart';
import 'package:flutter_components_1/widgets/widgets.dart';


class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          //https://img1.wallspic.com/crops/6/9/6/4/6/164696/164696-star_wars-bb_8-darth_vader-poe_dameron-cartel-3840x2160.jpg
          //https://www.xtrafondos.com/wallpapers/marcha-imperial-star-wars-4496.jpg
          //https://wallpapers.com/images/hd/4k-star-wars-darth-vader-art-gfufiqxrm9p5w4gp.jpg
          //https://wallpapers.com/images/hd/1920-x-1080-star-wars-88kwuwvd3lsml1zk.jpg
          CustomCardTipo1(),
          SizedBox(height: 10),
          CustomCardTipo2(imagenUrl: 'https://wallpapers.com/images/hd/4k-star-wars-the-force-awakens-acm74zjpq3j2pywa.jpg', nombre: 'Poster promocional',),
          SizedBox(height: 10),
          CustomCardTipo2(imagenUrl: 'https://img1.wallspic.com/crops/6/9/6/4/6/164696/164696-star_wars-bb_8-darth_vader-poe_dameron-cartel-3840x2160.jpg', nombre: 'Star Wars 1',),
          SizedBox(height: 10),
          CustomCardTipo2(imagenUrl: 'https://www.xtrafondos.com/wallpapers/marcha-imperial-star-wars-4496.jpg', nombre: 'Star Wars 2'),
          SizedBox(height: 10),
          CustomCardTipo2(imagenUrl: 'https://wallpapers.com/images/hd/4k-star-wars-darth-vader-art-gfufiqxrm9p5w4gp.jpg', nombre: 'Star Wars 3'),
          SizedBox(height: 10),
          CustomCardTipo2(imagenUrl: 'https://wallpapers.com/images/hd/1920-x-1080-star-wars-88kwuwvd3lsml1zk.jpg'),
          
        ],
      )
    );
  }
}

