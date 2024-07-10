import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_bloc_event.freezed.dart';

@freezed
class ListBlocEvent with _$ListBlocEvent {
  const factory ListBlocEvent.refresh() = Refresh;
  const factory ListBlocEvent.delete() = Delete;
  const factory ListBlocEvent.edit(
    String title,
    String description,
  ) = Edit;
}
