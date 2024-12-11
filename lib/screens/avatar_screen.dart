import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              child: Text('JR'),
              backgroundColor: Colors.greenAccent,
            ),
          )
        ],
        ),
      
      body: const Center(
         child: CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage('https://wallpapers.com/images/featured/sonrisa-de-majin-vegeta-2xw2ednhwu3qqtzq.jpg'),
         ),
      ),
    );
  }
}