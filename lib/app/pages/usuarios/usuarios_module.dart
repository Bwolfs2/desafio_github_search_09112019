import 'package:desafio_github_search_09112019/app/pages/usuarios/widgets/card_github/card_github_bloc.dart';
import 'package:desafio_github_search_09112019/app/pages/usuarios/repositories/github_repository.dart';
import 'package:desafio_github_search_09112019/app/pages/usuarios/usuarios_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:desafio_github_search_09112019/app/pages/usuarios/usuarios_page.dart';

class UsuariosModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => CardGithubBloc()),
        Bloc((i) => UsuariosBloc(i.get())),
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) => GithubRepository(i.get())),
        Dependency((i) => Dio()),
      ];

  @override
  Widget get view => UsuariosPage();

  static Inject get to => Inject<UsuariosModule>.of();
}
