import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
        ),
      body: Center(
         child: Container(
          
          height: _height,
          width: _width,
          decoration: BoxDecoration(
            color: _color,
          borderRadius: _borderRadius, //SI PONEMOS BORDER RADIUS EL COLOR VA DENTRO DE DECORATION 
          ),
          //decoration: BorderRadius.circular(20), NO DEJA FUERA, SOLO DENTRO DE DECORATION
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_circle),
        onPressed: (){
          _width =  Random().nextDouble() * 300;
          _height = Random().nextDouble() * 300;
          _color = Color.fromARGB(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), Random().nextInt(255));
          setState(() {
            
          });
        }
        ),
    );
  }
}