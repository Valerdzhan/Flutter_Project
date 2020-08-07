import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myapp/business/graphql_client.dart';
import 'package:myapp/business/todos/models/todo.dart';

class UpdateAction extends ReduxAction<AppState> {
  final int id;
  final String title;
  final bool done;

  UpdateAction({@required this.id, this.title, this.done}) : assert(id > 0);

  GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

  static const updateTodo = r'''
    mutation updateTodo($id: Int!, $title: String, $done: Boolean) {
      updateTodo(id: $id, title: $title, done: $done) {
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
      document: updateTodo,
      variables: <String, dynamic>{
        'id': this.id,
        'title': this.title,
        'done': this.done,
      },
    );

    var result = await _client.mutate(options);

    if (!result.hasException) {
      var todoList = state.todoList
          .map<Todo>((_) => _.id == this.id
              ? _ = _.copy(title: this.title, done: this.done)
              : _)
          .toList();

      return state.copy(todoList: todoList);
    }

    return state;
  }
}
