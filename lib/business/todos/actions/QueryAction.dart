import 'dart:async';

import 'package:myapp/business/app_state_store.dart';
import 'package:async_redux/async_redux.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myapp/business/graphql_client.dart';
import 'package:myapp/business/todos/models/todo.dart';

class QueryAction extends ReduxAction<AppState> {
  QueryAction();

  GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

  static const todosQuery = r'''
    query todos($title: String!) {  
      todos (title: $title) {
        id,
        title,
        done
      }
    }
  ''';

  @override
  Future<AppState> reduce() async {
    GraphQLClient _client = graphQLConfiguration.clientToQuery();

    final QueryOptions options = QueryOptions(
      document: todosQuery,
      variables: <String, dynamic>{
        'title': '',
      },
    );

    final QueryResult result = await _client.query(options);

    if (!result.hasException) {
      var todoList = (result.data['todos'] as List)
          .map((_) => Todo(id: _['id'], done: _['done'], title: _['title']))
          .toList();

      return state.copy(todoList: todoList);
    }

    return state;
  }
}
