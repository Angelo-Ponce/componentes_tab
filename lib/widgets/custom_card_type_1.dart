import 'package:componentes_tab/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon( Icons.photo_album_outlined, color: AppTheme.primary,),
            title: const Text('Titulo'),
            subtitle: Text('Nisi consectetur veniam laborum nisi eiusmod consectetur Lorem ut nostrud laboris nisi fugiat ex.'),
          ),
          Padding(
            padding: const EdgeInsets.only( right: 5),
            child: Row(
              // De donde se deben posicionar
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child: Text('Cancelar'), ),
                // Expanded(child: Container()),
                TextButton(onPressed: (){}, child: Text('OK'))
              ],
            ),
          )
        ],
      ),
    );
  }
}