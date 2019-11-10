import 'package:desafio_github_search_09112019/app/pages/github_page/github_page_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:desafio_github_search_09112019/app/pages/github_page/github_page_page.dart';

class GithubPageModule extends ModuleWidget {
  final String url;
  GithubPageModule(this.url);

  @override
  List<Bloc> get blocs => [
        Bloc((i) => GithubPageBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => GithubPagePage(url);

  static Inject get to => Inject<GithubPageModule>.of();
}
