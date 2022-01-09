import 'package:flutter/material.dart';
import 'package:saude/components/area_criar_postagem.dart';
import 'package:saude/components/area_estoria.dart';
import 'package:saude/components/circle_buttom.dart';
import 'package:saude/dados/dados.dart';
import 'package:saude/ultilities/color_palette.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            //expandedHeight: 250,
            floating: true,
            centerTitle: false,
            title: const Text(
              "SIGTS",
              style: TextStyle(
                color: ColorsPalette.facebookBlue,
                fontWeight: FontWeight.bold,
                fontSize: 28,
                letterSpacing: -1.2,
              ),
            ),
            actions: [
              CircleButtom(
                buttomLength: 115,
                buttomText: "Relatório",
                onPressed: () {
                  debugPrint('Botão de Relatório funcionando');
                },
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: AreaCriarPostagem(usuario: usuarioAtual),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
            sliver: SliverToBoxAdapter(
              child: AreaEstoria(
                usuario: usuarioAtual,
                estorias: estorias,
              ),
            ),
          ),
          //!Lista a baixo
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (context, indice) {
          //       Postagem postagem = postagens[indice];
          //       return PostCard(postagem: postagem);
          //     },
          //     childCount: postagens.length,
          //   ),
          // ),
          //Todo: Criar lista de pacietes
        ],
      ),
    );
  }
}
