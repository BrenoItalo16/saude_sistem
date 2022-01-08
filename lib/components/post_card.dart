import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:saude/components/cabecalho_postagem.dart';
import 'package:saude/components/estatisticas_postagem.dart';
import 'package:saude/models/modelos.dart';

class PostCard extends StatelessWidget {
  final Postagem postagem;

  const PostCard({
    Key? key,
    required this.postagem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CabecalhoPostagem(postagem: postagem),
                Text(
                  postagem.descricao,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: CachedNetworkImage(
              imageUrl: postagem.urlImagem,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: EstatisticasPostagem(postagem: postagem),
          ),
        ],
      ),
    );
  }
}
