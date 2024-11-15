import 'package:flutter/material.dart';
import 'package:flutter_components_1/theme/app_theme.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Titulo de la tarjeta'),
            subtitle: Text('Magna qui cillum cillum culpa. Anim est mollit duis commodo esse aliquip. Laboris consectetur nostrud culpa quis quis et et. Qui magna duis duis enim culpa officia amet. Laborum dolor dolore esse nostrud occaecat sunt amet dolore ipsum mollit cillum occaecat adipisicing ut. Est dolore est irure reprehenderit. Irure ad cillum aliquip nulla minim exercitation quis cillum sint aliquip.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                 child: const Text('Cancelar')
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 8.0),
                   child: TextButton(
                                   onPressed: () {},
                   child: const Text('Aceptar')
                   ),
                 ),
            ],
          )
        ],
      ),
    );
  }
}
