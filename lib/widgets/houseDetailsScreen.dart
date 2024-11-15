import 'package:flutter/material.dart';

class HouseDetailsScreen extends StatelessWidget {
  final String houseName;
  final String imageUrl;
  final String description;

  const HouseDetailsScreen({
    super.key,
    required this.houseName,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(houseName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: FadeInImage(
                image: NetworkImage(imageUrl),
                placeholder: const AssetImage('assets/jar-loading.gif'),
                width: double.infinity,
                height: 260,
                fit: BoxFit.cover,
                fadeInDuration: const Duration(milliseconds: 300),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              houseName,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: ()=> Navigator.pop(context)),
    );
  }
}
