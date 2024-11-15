import 'package:flutter/material.dart';
import 'package:flutter_components_1/widgets/houseDetailsScreen.dart';


class Listview3Screen extends StatelessWidget {
  final options = const [
    {
      'name': 'Targaryen',
      'image':
          'https://i.pinimg.com/736x/91/61/ac/9161ac73bf0235a4bfb341f07d079f56.jpg',
      'description':
          'La Casa Targaryen gobernó los Siete Reinos de Westeros durante casi tres siglos y es conocida por sus dragones y su linaje valyrio.',
    },
    {
      'name': 'Stark',
      'image':
          'https://wallpapers.com/images/featured/casa-stark-43i0jar1kxotz7f7.jpg',
      'description':
          'La Casa Stark es una de las casas más antiguas de Westeros, conocidos por su lema "El invierno se acerca".',
    },
    {
      'name': 'Lannister',
      'image':
          'https://lossietereinos.com/wp-content/uploads/2012/05/emblema-lannister.jpg',
      'description':
          'La Casa Lannister es famosa por su riqueza y poder, y su lema es "Oye mi rugido".',
    },
    {
      'name': 'Baratheon',
      'image':
          'https://i.ytimg.com/vi/HDPki2Jeb18/maxresdefault.jpg',
      'description':
          'La Casa Baratheon se originó durante la Conquista de Aegon y es conocida por su fuerza y su lema "Nuestra es la furia".',
    },
  ];


  const Listview3Screen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Casas Juego de Tronos'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final house = options[index];
          return ListTile(
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: Text(house['name'] as String),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HouseDetailsScreen(
                    houseName: house['name'] as String,
                    imageUrl: house['image'] as String,
                    description: house['description'] as String,
                  ),
                ),
              );
            },
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: options.length,
      ),
    );
  }
}


