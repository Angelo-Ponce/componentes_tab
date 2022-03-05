import 'package:flutter/material.dart';

import 'package:componentes_tab/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox( height: 20,),
          CustomCardType2(
            imageUrl: 'https://docs.flutter.dev/assets/images/dash/Dashatars.png',
            textImg: 'Desarrollador',
          ),
          CustomCardType1(),
          SizedBox( height: 20,),
          CustomCardType2(
            imageUrl: 'https://image.winudf.com/v2/image/Y29tLmh1YWRvbmcuZmVuZ2ppbmcxX3NjcmVlbnNob3RzXzJfNDkyMzIzZWQ/screen-2.jpg?fakeurl=1&type=.jpg',
            textImg: 'Bosque',
          ),
          SizedBox( height: 20,),
          CustomCardType2(
            imageUrl: 'https://image.winudf.com/v2/image/Y29tLmh1YWRvbmcuZmVuZ2ppbmcxX3NjcmVlbnNob3RzXzJfNDkyMzIzZWQ/screen-2.jpg?fakeurl=1&type=.jpg',
            
          )
        ],
      )
    );
  }
}