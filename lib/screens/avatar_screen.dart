import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class AvatarScreen extends StatelessWidget {

  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cristian Fraga'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              backgroundImage: const NetworkImage('https://avatars.githubusercontent.com/u/103222125'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/103222125'),
        ),
      ),
    );
  }
}