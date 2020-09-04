// ignore_for_file: directives_ordering

import 'package:build_runner_core/build_runner_core.dart' as _i1;
import 'package:artemis/builder.dart' as _i2;
import 'package:gql_code_gen/ast_builder.dart' as _i3;
import 'package:json_serializable/builder.dart' as _i4;
import 'package:source_gen/builder.dart' as _i5;
import 'package:build_config/build_config.dart' as _i6;
import 'dart:isolate' as _i7;
import 'package:build_runner/build_runner.dart' as _i8;
import 'dart:io' as _i9;

final _builders = <_i1.BuilderApplication>[
  _i1.apply('artemis:artemis', [_i2.graphQLQueryBuilder],
      _i1.toDependentsOf('artemis'),
      hideOutput: false,
      appliesBuilders: ['json_serializable:json_serializable']),
  _i1.apply('gql_code_gen:ast_builder', [_i3.astBuilder],
      _i1.toDependentsOf('gql_code_gen'),
      hideOutput: false, appliesBuilders: ['source_gen:combining_builder']),
  _i1.apply('json_serializable:json_serializable', [_i4.jsonSerializable],
      _i1.toDependentsOf('json_serializable'),
      hideOutput: true, appliesBuilders: ['source_gen:combining_builder']),
  _i1.apply('source_gen:combining_builder', [_i5.combiningBuilder],
      _i1.toNoneByDefault(),
      hideOutput: false, appliesBuilders: ['source_gen:part_cleanup']),
  _i1.applyPostProcess('source_gen:part_cleanup', _i5.partCleanup,
      defaultGenerateFor: const _i6.InputSet())
];
void main(List<String> args, [_i7.SendPort sendPort]) async {
  var result = await _i8.run(args, _builders);
  sendPort?.send(result);
  _i9.exitCode = result;
}
