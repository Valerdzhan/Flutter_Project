import 'package:async_redux/async_redux.dart';
import 'package:myapp/business/app_state_store.dart';

/// Actions that extend [BarrierAction] show a modal barrier while their async processes run.
abstract class BarrierAction extends ReduxAction<AppState> {
  @override
  void before() => dispatch(_WaitAction(true));

  @override
  void after() => dispatch(_WaitAction(false));
}

class _WaitAction extends ReduxAction<AppState> {
  final bool waiting;

  _WaitAction(this.waiting);

  @override
  Future<AppState> reduce() async => state.copy(waiting: waiting);
}
