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
  const factory ListBlocEvent.createItem(String title, String description, DateTime? due, DateTime? done) = CreateItem;
  const factory ListBlocEvent.deleteItem(int id) = DeleteItem;
  const factory ListBlocEvent.editItem(
      String title,
      String description,
      DateTime? due,
      DateTime? done,
      ) = EditItem;

  //comment changing events
  const factory ListBlocEvent.createComment(String text) = CreateComment;
  const factory ListBlocEvent.deleteComment(int id) = DeleteComment;

}
