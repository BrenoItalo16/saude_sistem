//Neste documento devem ser inseridos os dados do paciente para armazenar no db
import 'package:saude/models/modelos.dart';

class Postagem {
  Usuario usuario;
  String descricao;
  String tempoAtras;
  String urlImagem;
  int curtidas;
  int comentarios;
  int compartilhamentos;

  Postagem({
    required this.usuario,
    required this.descricao,
    required this.tempoAtras,
    required this.urlImagem,
    required this.curtidas,
    required this.comentarios,
    required this.compartilhamentos,
  });
}
