import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_bloc_event.freezed.dart';

@freezed
class ListBlocEvent with _$ListBlocEvent {
  const factory ListBlocEvent.refresh() = Refresh;
  //List changing events
  const factory ListBlocEvent.deleteList(int id) = DeleteList;
  const factory ListBlocEvent.editList(
    String title,
    String description,
  ) = EditList;

  //item changing events
  const factory ListBlocEvent.createItem(int listId, String title, String description, DateTime? due) = CreateItem;
  const factory ListBlocEvent.deleteItem(int id) = DeleteItem;
  const factory ListBlocEvent.editItem(
      int id,
      String title,
      String description,
      DateTime? due,
      DateTime? done,
      ) = EditItem;

  //comment changing events
  const factory ListBlocEvent.createComment(int itemId, String text) = CreateComment;
  const factory ListBlocEvent.deleteComment(int id) = DeleteComment;

  //permission changing events
  const factory ListBlocEvent.createPermission(int listId, String username) = CreatePermission;
  const factory ListBlocEvent.deletePermission(int listId, String username) = DeletePermission;

}
