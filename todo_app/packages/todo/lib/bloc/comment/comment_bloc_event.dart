import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_bloc_event.freezed.dart';

@freezed
class CommentBlocEvent with _$CommentBlocEvent {
  const factory CommentBlocEvent.refresh() = Refresh;
  const factory CommentBlocEvent.delete() = Delete;
}
