import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myapp/business/graphql_client.dart';

class RemoveAction extends ReduxAction<AppState> {
  final int id;

  RemoveAction({@required this.id}) : assert(id > 0);

  GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

  static const removeTodo = r'''
    mutation removeTodo($id: Int!) {
      removeTodo(id: $id) {
        id
        title
        done
      }
    }
  ''';

  @override
  Future<AppState> reduce() async {
    GraphQLClient _client = graphQLConfiguration.clientToQuery();

    final MutationOptions options = MutationOptions(
      // ignore: deprecated_member_use
      document: removeTodo,
      variables: <String, dynamic>{'id': id},
    );

    var result = await _client.mutate(options);

    if (!result.hasException) {
      var todoList = state.todoList.where((_) => _.id != id).toList();

      return state.copy(todoList: todoList);
    }

    return state;
  }
}
