import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
final String imagenUrl;
final String? nombre;
  const CustomCardTipo2({super.key, required this.imagenUrl, this.nombre});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
child: Column(
  children: [
     FadeInImage(
      //image: NetworkImage('https://wallpapers.com/images/hd/4k-star-wars-the-force-awakens-acm74zjpq3j2pywa.jpg'),
      image: NetworkImage(imagenUrl),
      placeholder: const AssetImage('assets/jar-loading.gif'),
      width: double.infinity,
      height: 260,
      fit: BoxFit.cover,
      fadeInDuration: const Duration(microseconds: 3000),
      ),

      if(nombre != null)
      Container(
        alignment: AlignmentDirectional.centerEnd,
        padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
        child: 
        Text(nombre ?? 'Desconocido'))
  ],
),
    );
  }
}