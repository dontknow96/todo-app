import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/model/comment_model.dart';

part 'comment_bloc_state.freezed.dart';

enum CommentState { none, loading}

@freezed
class CommentBlocState with _$CommentBlocState {
  const factory CommentBlocState({
    required CommentState state,
    required CommentModel comment,
  }) = _CommentBlocState;
}
