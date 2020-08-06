import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:myapp/models/graphql/graphql_api.init.graphql.dart';
// import 'package:graphql_flutter/graphql_flutter.dart';
// import 'package:myapp/models/graphql/graphql_api.current_user.graphql.dart';
import 'package:myapp/src/components/myScaffold.dart';
import 'package:myapp/src/models/User/userItem.dart';
import 'package:myapp/src/redux/store.dart';
import 'package:myapp/src/redux/users/users_state.dart';

class UserPage extends StatelessWidget {
  final String _title = 'Пользователь';
  static const BottomNavigationBarItem navItem = BottomNavigationBarItem(
    icon: Icon(Icons.person),
    title: Text('Пользователь'),
  );
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: this._title,
      body: UserPageBody(),
      isDrawer: false,
    );
  }
}

class UserPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Text('bla');
    return StoreConnector<AppState, Init$DFSQuery$CurrentUser>(
      distinct: true,
      converter: (store) => UsersState.getCurrentUser(store.state.usersState),
      builder: (context, currentUser) {
        return Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Image.asset('assets/images/NonameUser.png',
                          height: 100.0, width: 100.0)),
                  Flexible(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(currentUser.displayName),
                          Text(currentUser.jobTitle),
                          Text(currentUser.department),
                          Text(currentUser.email),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
    // return Query(
    //   options: QueryOptions(documentNode: CurrentUserQuery().document),
    //   builder: (
    //     QueryResult result, {
    //     Future<QueryResult> Function() refetch,
    //     FetchMore fetchMore,
    //   }) {
    //     if (result.hasException) {
    //       return Text(result.exception.toString());
    //     }

    //     if (result.loading) {
    //       return const Center(
    //         child: CircularProgressIndicator(),
    //       );
    //     }

    //     final currentUser =
    //         CurrentUser$DFSQuery.fromJson(result.data).currentUser;

    //     return Container(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Column(
    //         children: <Widget>[
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             children: <Widget>[
    //               Container(
    //                   padding: const EdgeInsets.only(right: 10.0),
    //                   child: Image.asset('assets/images/NonameUser.png',
    //                       height: 100.0, width: 100.0)),
    //               Flexible(
    //                 child: Container(
    //                   child: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: <Widget>[
    //                       Text(currentUser.displayName),
    //                       Text(currentUser.jobTitle),
    //                       Text(currentUser.department),
    //                       Text(currentUser.email),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    // );
  }
}
