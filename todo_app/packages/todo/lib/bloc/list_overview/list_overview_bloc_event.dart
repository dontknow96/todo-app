import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_overview_bloc_event.freezed.dart';

@freezed
class ListOverviewBlocEvent with _$ListOverviewBlocEvent{
  const factory ListOverviewBlocEvent.refresh() = Refresh;
  const factory ListOverviewBlocEvent.createList(String title, String description) = CreateList;
}
