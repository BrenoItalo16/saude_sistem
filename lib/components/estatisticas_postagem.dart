import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:saude/models/modelos.dart';
import 'package:saude/ultilities/color_palette.dart';

class EstatisticasPostagem extends StatelessWidget {
  final Postagem postagem;
  const EstatisticasPostagem({
    Key? key,
    required this.postagem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: ColorsPalette.facebookBlue,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                LineIcons.thumbsUpAlt,
                size: 12,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              "${postagem.curtidas}",
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            Text(
              "${postagem.compartilhamentos}",
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
        const Divider(thickness: 1.2),
        Row(),
      ],
    );
  }
}
