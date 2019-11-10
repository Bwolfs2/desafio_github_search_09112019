import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:desafio_github_search_09112019/app/pages/usuarios/models/github_list_model.dart';
import 'package:desafio_github_search_09112019/app/pages/usuarios/models/github_model.dart';

import 'package:dio/dio.dart';

class GithubRepository extends Disposable {
  final Dio client;

  GithubRepository(this.client);

  Future<List<GithubListModel>> getListOfGithub(String searchText) async {
    final response =
        await client.get('https://api.github.com/search/users?q=$searchText');

    return GithubListModel.fromJsonList(response.data["items"]);
  }

  Future<GithubModel> getUserInfos(String user) async {
    final response = await client.get('https://api.github.com/users/$user');
    return GithubModel.fromJson(response.data);
  }

  @override
  void dispose() {}
}
