import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:desafio_github_search_09112019/app/pages/dados_perfil/repositories/dados_perfil_repository.dart';
import 'package:desafio_github_search_09112019/app/pages/usuarios/models/github_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'dados_perfil_bloc.dart';
import 'dados_perfil_page.dart';

class DadosPerfilModule extends ModuleWidget {
  final GithubModel githubModel;
  DadosPerfilModule(this.githubModel);

  @override
  List<Bloc> get blocs => [
        Bloc((i) => DadosPerfilBloc(githubModel, i.get())),
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) => DadosPerfilRepository(i.get())),
        Dependency((i) => Dio()),
      ];

  @override
  Widget get view => DadosPerfilPage();

  static Inject get to => Inject<DadosPerfilModule>.of();
}
