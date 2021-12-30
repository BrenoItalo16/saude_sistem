import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:saude/components/imagem_perfil.dart';
import 'package:saude/models/modelos.dart';

class CabecalhoPostagem extends StatelessWidget {
  final Postagem postagem;

  const CabecalhoPostagem({
    Key? key,
    required this.postagem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImagemPerfil(
          urlImagem: postagem.usuario.urlImagem,
          foiVisualizado: true,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                postagem.usuario.nome,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text("${postagem.tempoAtras} - "),
                  Icon(LineIcons.globe, size: 16, color: Colors.grey[600]),
                ],
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(LineIcons.verticalEllipsis),
        ),
      ],
    );
  }
}
