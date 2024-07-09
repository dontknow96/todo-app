import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/list_model.dart';

part 'list_overview_bloc_state.freezed.dart';

@freezed
class ListOverviewBlocState with _$ListOverviewBlocState {
  const factory ListOverviewBlocState({
    required Iterable<ListModel> lists,
  }) = _ListOverviewBlocState;
}
