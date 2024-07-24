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
    );
  }
}