import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_bloc_event.freezed.dart';

@freezed
class ItemBlocEvent with _$ItemBlocEvent {
  const factory ItemBlocEvent.refresh() = Refresh;
  const factory ItemBlocEvent.delete() = Delete;
  const factory ItemBlocEvent.edit(
      String title,
      String description,
      DateTime? due,
      DateTime? done,
      ) = Edit;
}
