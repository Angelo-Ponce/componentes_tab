import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar'),
        actions: [
          Container(
            // separacion externa
            margin: const EdgeInsets.only( right: 5),
            child: CircleAvatar(
              child: const Text('SL'),
            ),
          )
        ],
      ),
      // body: const Center(
      //   // Solo funciona con imagen de url
      //    child: CircleAvatar(

      //    ),
      // ),
    );
  }
}
