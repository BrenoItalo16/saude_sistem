import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
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
            backgroundColor: Colors.white,
            //expandedHeight: 250,
            floating: true,
            centerTitle: false,
            title: const Text(
              "SIGPTS",
              style: TextStyle(
                color: ColorsPalette.facebookBlue,
                fontWeight: FontWeight.bold,
                fontSize: 28,
                letterSpacing: -1.2,
              ),
            ),
            actions: [
              CircleButtom(
                icone: LineIcons.search,
                iconeTamanho: 30,
                onPressed: () {},
              ),
              CircleButtom(
                icone: LineIcons.alternateSignOut,
                iconeTamanho: 30,
                onPressed: () {},
              )
            ],
          ),
          SliverToBoxAdapter(
            child: AreaCriarPostagem(usuario: usuarioAtual),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(
              child: AreaEstoria(
                usuario: usuarioAtual,
                estorias: estorias,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.grey,
              height: 1300,
            ),
          )
        ],
      ),
    );
  }
}
