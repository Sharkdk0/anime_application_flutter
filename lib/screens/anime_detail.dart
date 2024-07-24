import 'package:flutter/material.dart';

import '../models/anime_model.dart';

class AnimeDetail extends StatelessWidget {
  final AnimeModel animeModel;
  const AnimeDetail({super.key, required this.animeModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(animeModel.jpTitle),),
      body: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.4,
            child: Row(
              children: [
                Image.network(animeModel.imageURL),
                Column(
                  children: [
                    Text("Japanese Title: " + animeModel.jpTitle,
                    style: TextStyle(fontSize: MediaQuery.of(context).size.width > 600 ? 20 : 15)),
                    Text("English Title: " + animeModel.engTitle),
                    Text("Rating: " + animeModel.rating.toString()),
                    Text("Status: " +animeModel.status),
                    Text("Source: " +animeModel.source),
                    Text("Episodes: " +animeModel.episodes.toString()),
                  ]
                )
                
              ],
            ),),
            Column(children: [
              Text(animeModel.synopsis),
            ],)
          ] ),
      
    );
  }
}
