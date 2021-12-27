import 'package:flutter/material.dart';
import 'package:saude/components/story_card.dart';
import 'package:saude/models/modelos.dart';

class AreaEstoria extends StatelessWidget {
  final Usuario usuario;
  final List<Estoria> estorias;
  const AreaEstoria({
    Key? key,
    required this.usuario,
    required this.estorias,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        scrollDirection: Axis.horizontal,
        itemCount: estorias.length,
        itemBuilder: (context, indice) {
          // ignore: unused_local_variable
          Estoria estoria = estorias[indice];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: StoryCard(
              estoria: estoria,
            ),
          );
        },
      ),
    );
  }
}
