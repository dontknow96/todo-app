import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/list_model.dart';

part 'list_overview_bloc_state.freezed.dart';


enum ListOverviewState { none, loading}

@freezed
class ListOverviewBlocState with _$ListOverviewBlocState {
  const factory ListOverviewBlocState({
    required ListOverviewState state,
    required Iterable<ListModel> lists,
  }) = _ListOverviewBlocState;
}
