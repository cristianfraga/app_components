import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {

  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(cardName: 'Carretera infinita', imageUrl: 'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg',),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://cloudfront.slrlounge.com/wp-content/uploads/2020/06/best-landscape-photographers-to-follow-in-2020-1200x675.jpg',),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://westernpriorities.org/wp-content/uploads/2021/10/GrandTeton_Swabacher-Landing-Sunset_Tobiason_NPS_Flickr.jpg',),
        ],
      ),
    );
  }
}

