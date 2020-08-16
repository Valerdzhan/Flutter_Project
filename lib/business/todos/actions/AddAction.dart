import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myapp/business/app_state_store.dart';
import 'package:myapp/business/graphql_client.dart';
import 'package:myapp/business/todos/models/todo.dart';

class AddAction extends ReduxAction<AppState> {
  final String title;

  AddAction({@required this.title}) : assert(title != null || title != '');

  GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

  static const addTodo = r'''
    mutation addTodo($title: String!) {
      addTodo(title: $title) {
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
      document: addTodo,
      variables: <String, dynamic>{
        'title': title,
      },
    );

    var result = await _client.mutate(options);

    if (!result.hasException) {
      var todoList = List<Todo>.from(state.todoList)
        ..add(Todo(
          id: state.todoList.length > 0 ? state.todoList.last.id + 1 : 1,
          title: title,
          done: false,
        ));

      return state.copy(todoList: todoList);
    }

    return state;
  }
}
