// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(int id) deleteList,
    required TResult Function(String title, String description) editList,
    required TResult Function(
            int listId, String title, String description, DateTime? due)
        createItem,
    required TResult Function(int id) deleteItem,
    required TResult Function(int id, String title, String description,
            DateTime? due, DateTime? done)
        editItem,
    required TResult Function(int itemId, String text) createComment,
    required TResult Function(int id) deleteComment,
    required TResult Function(int listId, String username) createPermission,
    required TResult Function(int listId, String username) deletePermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(int id)? deleteList,
    TResult? Function(String title, String description)? editList,
    TResult? Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult? Function(int id)? deleteItem,
    TResult? Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult? Function(int itemId, String text)? createComment,
    TResult? Function(int id)? deleteComment,
    TResult? Function(int listId, String username)? createPermission,
    TResult? Function(int listId, String username)? deletePermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(int id)? deleteList,
    TResult Function(String title, String description)? editList,
    TResult Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult Function(int id)? deleteItem,
    TResult Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult Function(int itemId, String text)? createComment,
    TResult Function(int id)? deleteComment,
    TResult Function(int listId, String username)? createPermission,
    TResult Function(int listId, String username)? deletePermission,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(DeleteList value) deleteList,
    required TResult Function(EditList value) editList,
    required TResult Function(CreateItem value) createItem,
    required TResult Function(DeleteItem value) deleteItem,
    required TResult Function(EditItem value) editItem,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(CreatePermission value) createPermission,
    required TResult Function(DeletePermission value) deletePermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(DeleteList value)? deleteList,
    TResult? Function(EditList value)? editList,
    TResult? Function(CreateItem value)? createItem,
    TResult? Function(DeleteItem value)? deleteItem,
    TResult? Function(EditItem value)? editItem,
    TResult? Function(CreateComment value)? createComment,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(CreatePermission value)? createPermission,
    TResult? Function(DeletePermission value)? deletePermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(DeleteList value)? deleteList,
    TResult Function(EditList value)? editList,
    TResult Function(CreateItem value)? createItem,
    TResult Function(DeleteItem value)? deleteItem,
    TResult Function(EditItem value)? editItem,
    TResult Function(CreateComment value)? createComment,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(CreatePermission value)? createPermission,
    TResult Function(DeletePermission value)? deletePermission,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListBlocEventCopyWith<$Res> {
  factory $ListBlocEventCopyWith(
          ListBlocEvent value, $Res Function(ListBlocEvent) then) =
      _$ListBlocEventCopyWithImpl<$Res, ListBlocEvent>;
}

/// @nodoc
class _$ListBlocEventCopyWithImpl<$Res, $Val extends ListBlocEvent>
    implements $ListBlocEventCopyWith<$Res> {
  _$ListBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RefreshImplCopyWith<$Res> {
  factory _$$RefreshImplCopyWith(
          _$RefreshImpl value, $Res Function(_$RefreshImpl) then) =
      __$$RefreshImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshImplCopyWithImpl<$Res>
    extends _$ListBlocEventCopyWithImpl<$Res, _$RefreshImpl>
    implements _$$RefreshImplCopyWith<$Res> {
  __$$RefreshImplCopyWithImpl(
      _$RefreshImpl _value, $Res Function(_$RefreshImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshImpl implements Refresh {
  const _$RefreshImpl();

  @override
  String toString() {
    return 'ListBlocEvent.refresh()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(int id) deleteList,
    required TResult Function(String title, String description) editList,
    required TResult Function(
            int listId, String title, String description, DateTime? due)
        createItem,
    required TResult Function(int id) deleteItem,
    required TResult Function(int id, String title, String description,
            DateTime? due, DateTime? done)
        editItem,
    required TResult Function(int itemId, String text) createComment,
    required TResult Function(int id) deleteComment,
    required TResult Function(int listId, String username) createPermission,
    required TResult Function(int listId, String username) deletePermission,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(int id)? deleteList,
    TResult? Function(String title, String description)? editList,
    TResult? Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult? Function(int id)? deleteItem,
    TResult? Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult? Function(int itemId, String text)? createComment,
    TResult? Function(int id)? deleteComment,
    TResult? Function(int listId, String username)? createPermission,
    TResult? Function(int listId, String username)? deletePermission,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(int id)? deleteList,
    TResult Function(String title, String description)? editList,
    TResult Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult Function(int id)? deleteItem,
    TResult Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult Function(int itemId, String text)? createComment,
    TResult Function(int id)? deleteComment,
    TResult Function(int listId, String username)? createPermission,
    TResult Function(int listId, String username)? deletePermission,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(DeleteList value) deleteList,
    required TResult Function(EditList value) editList,
    required TResult Function(CreateItem value) createItem,
    required TResult Function(DeleteItem value) deleteItem,
    required TResult Function(EditItem value) editItem,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(CreatePermission value) createPermission,
    required TResult Function(DeletePermission value) deletePermission,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(DeleteList value)? deleteList,
    TResult? Function(EditList value)? editList,
    TResult? Function(CreateItem value)? createItem,
    TResult? Function(DeleteItem value)? deleteItem,
    TResult? Function(EditItem value)? editItem,
    TResult? Function(CreateComment value)? createComment,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(CreatePermission value)? createPermission,
    TResult? Function(DeletePermission value)? deletePermission,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(DeleteList value)? deleteList,
    TResult Function(EditList value)? editList,
    TResult Function(CreateItem value)? createItem,
    TResult Function(DeleteItem value)? deleteItem,
    TResult Function(EditItem value)? editItem,
    TResult Function(CreateComment value)? createComment,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(CreatePermission value)? createPermission,
    TResult Function(DeletePermission value)? deletePermission,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements ListBlocEvent {
  const factory Refresh() = _$RefreshImpl;
}

/// @nodoc
abstract class _$$DeleteListImplCopyWith<$Res> {
  factory _$$DeleteListImplCopyWith(
          _$DeleteListImpl value, $Res Function(_$DeleteListImpl) then) =
      __$$DeleteListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteListImplCopyWithImpl<$Res>
    extends _$ListBlocEventCopyWithImpl<$Res, _$DeleteListImpl>
    implements _$$DeleteListImplCopyWith<$Res> {
  __$$DeleteListImplCopyWithImpl(
      _$DeleteListImpl _value, $Res Function(_$DeleteListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteListImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteListImpl implements DeleteList {
  const _$DeleteListImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ListBlocEvent.deleteList(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteListImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteListImplCopyWith<_$DeleteListImpl> get copyWith =>
      __$$DeleteListImplCopyWithImpl<_$DeleteListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(int id) deleteList,
    required TResult Function(String title, String description) editList,
    required TResult Function(
            int listId, String title, String description, DateTime? due)
        createItem,
    required TResult Function(int id) deleteItem,
    required TResult Function(int id, String title, String description,
            DateTime? due, DateTime? done)
        editItem,
    required TResult Function(int itemId, String text) createComment,
    required TResult Function(int id) deleteComment,
    required TResult Function(int listId, String username) createPermission,
    required TResult Function(int listId, String username) deletePermission,
  }) {
    return deleteList(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(int id)? deleteList,
    TResult? Function(String title, String description)? editList,
    TResult? Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult? Function(int id)? deleteItem,
    TResult? Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult? Function(int itemId, String text)? createComment,
    TResult? Function(int id)? deleteComment,
    TResult? Function(int listId, String username)? createPermission,
    TResult? Function(int listId, String username)? deletePermission,
  }) {
    return deleteList?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(int id)? deleteList,
    TResult Function(String title, String description)? editList,
    TResult Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult Function(int id)? deleteItem,
    TResult Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult Function(int itemId, String text)? createComment,
    TResult Function(int id)? deleteComment,
    TResult Function(int listId, String username)? createPermission,
    TResult Function(int listId, String username)? deletePermission,
    required TResult orElse(),
  }) {
    if (deleteList != null) {
      return deleteList(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(DeleteList value) deleteList,
    required TResult Function(EditList value) editList,
    required TResult Function(CreateItem value) createItem,
    required TResult Function(DeleteItem value) deleteItem,
    required TResult Function(EditItem value) editItem,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(CreatePermission value) createPermission,
    required TResult Function(DeletePermission value) deletePermission,
  }) {
    return deleteList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(DeleteList value)? deleteList,
    TResult? Function(EditList value)? editList,
    TResult? Function(CreateItem value)? createItem,
    TResult? Function(DeleteItem value)? deleteItem,
    TResult? Function(EditItem value)? editItem,
    TResult? Function(CreateComment value)? createComment,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(CreatePermission value)? createPermission,
    TResult? Function(DeletePermission value)? deletePermission,
  }) {
    return deleteList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(DeleteList value)? deleteList,
    TResult Function(EditList value)? editList,
    TResult Function(CreateItem value)? createItem,
    TResult Function(DeleteItem value)? deleteItem,
    TResult Function(EditItem value)? editItem,
    TResult Function(CreateComment value)? createComment,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(CreatePermission value)? createPermission,
    TResult Function(DeletePermission value)? deletePermission,
    required TResult orElse(),
  }) {
    if (deleteList != null) {
      return deleteList(this);
    }
    return orElse();
  }
}

abstract class DeleteList implements ListBlocEvent {
  const factory DeleteList(final int id) = _$DeleteListImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteListImplCopyWith<_$DeleteListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditListImplCopyWith<$Res> {
  factory _$$EditListImplCopyWith(
          _$EditListImpl value, $Res Function(_$EditListImpl) then) =
      __$$EditListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$EditListImplCopyWithImpl<$Res>
    extends _$ListBlocEventCopyWithImpl<$Res, _$EditListImpl>
    implements _$$EditListImplCopyWith<$Res> {
  __$$EditListImplCopyWithImpl(
      _$EditListImpl _value, $Res Function(_$EditListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$EditListImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditListImpl implements EditList {
  const _$EditListImpl(this.title, this.description);

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'ListBlocEvent.editList(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditListImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditListImplCopyWith<_$EditListImpl> get copyWith =>
      __$$EditListImplCopyWithImpl<_$EditListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(int id) deleteList,
    required TResult Function(String title, String description) editList,
    required TResult Function(
            int listId, String title, String description, DateTime? due)
        createItem,
    required TResult Function(int id) deleteItem,
    required TResult Function(int id, String title, String description,
            DateTime? due, DateTime? done)
        editItem,
    required TResult Function(int itemId, String text) createComment,
    required TResult Function(int id) deleteComment,
    required TResult Function(int listId, String username) createPermission,
    required TResult Function(int listId, String username) deletePermission,
  }) {
    return editList(title, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(int id)? deleteList,
    TResult? Function(String title, String description)? editList,
    TResult? Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult? Function(int id)? deleteItem,
    TResult? Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult? Function(int itemId, String text)? createComment,
    TResult? Function(int id)? deleteComment,
    TResult? Function(int listId, String username)? createPermission,
    TResult? Function(int listId, String username)? deletePermission,
  }) {
    return editList?.call(title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(int id)? deleteList,
    TResult Function(String title, String description)? editList,
    TResult Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult Function(int id)? deleteItem,
    TResult Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult Function(int itemId, String text)? createComment,
    TResult Function(int id)? deleteComment,
    TResult Function(int listId, String username)? createPermission,
    TResult Function(int listId, String username)? deletePermission,
    required TResult orElse(),
  }) {
    if (editList != null) {
      return editList(title, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(DeleteList value) deleteList,
    required TResult Function(EditList value) editList,
    required TResult Function(CreateItem value) createItem,
    required TResult Function(DeleteItem value) deleteItem,
    required TResult Function(EditItem value) editItem,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(CreatePermission value) createPermission,
    required TResult Function(DeletePermission value) deletePermission,
  }) {
    return editList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(DeleteList value)? deleteList,
    TResult? Function(EditList value)? editList,
    TResult? Function(CreateItem value)? createItem,
    TResult? Function(DeleteItem value)? deleteItem,
    TResult? Function(EditItem value)? editItem,
    TResult? Function(CreateComment value)? createComment,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(CreatePermission value)? createPermission,
    TResult? Function(DeletePermission value)? deletePermission,
  }) {
    return editList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(DeleteList value)? deleteList,
    TResult Function(EditList value)? editList,
    TResult Function(CreateItem value)? createItem,
    TResult Function(DeleteItem value)? deleteItem,
    TResult Function(EditItem value)? editItem,
    TResult Function(CreateComment value)? createComment,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(CreatePermission value)? createPermission,
    TResult Function(DeletePermission value)? deletePermission,
    required TResult orElse(),
  }) {
    if (editList != null) {
      return editList(this);
    }
    return orElse();
  }
}

abstract class EditList implements ListBlocEvent {
  const factory EditList(final String title, final String description) =
      _$EditListImpl;

  String get title;
  String get description;
  @JsonKey(ignore: true)
  _$$EditListImplCopyWith<_$EditListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateItemImplCopyWith<$Res> {
  factory _$$CreateItemImplCopyWith(
          _$CreateItemImpl value, $Res Function(_$CreateItemImpl) then) =
      __$$CreateItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int listId, String title, String description, DateTime? due});
}

/// @nodoc
class __$$CreateItemImplCopyWithImpl<$Res>
    extends _$ListBlocEventCopyWithImpl<$Res, _$CreateItemImpl>
    implements _$$CreateItemImplCopyWith<$Res> {
  __$$CreateItemImplCopyWithImpl(
      _$CreateItemImpl _value, $Res Function(_$CreateItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listId = null,
    Object? title = null,
    Object? description = null,
    Object? due = freezed,
  }) {
    return _then(_$CreateItemImpl(
      null == listId
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
              as int,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == due
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$CreateItemImpl implements CreateItem {
  const _$CreateItemImpl(this.listId, this.title, this.description, this.due);

  @override
  final int listId;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime? due;

  @override
  String toString() {
    return 'ListBlocEvent.createItem(listId: $listId, title: $title, description: $description, due: $due)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateItemImpl &&
            (identical(other.listId, listId) || other.listId == listId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.due, due) || other.due == due));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listId, title, description, due);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateItemImplCopyWith<_$CreateItemImpl> get copyWith =>
      __$$CreateItemImplCopyWithImpl<_$CreateItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(int id) deleteList,
    required TResult Function(String title, String description) editList,
    required TResult Function(
            int listId, String title, String description, DateTime? due)
        createItem,
    required TResult Function(int id) deleteItem,
    required TResult Function(int id, String title, String description,
            DateTime? due, DateTime? done)
        editItem,
    required TResult Function(int itemId, String text) createComment,
    required TResult Function(int id) deleteComment,
    required TResult Function(int listId, String username) createPermission,
    required TResult Function(int listId, String username) deletePermission,
  }) {
    return createItem(listId, title, description, due);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(int id)? deleteList,
    TResult? Function(String title, String description)? editList,
    TResult? Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult? Function(int id)? deleteItem,
    TResult? Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult? Function(int itemId, String text)? createComment,
    TResult? Function(int id)? deleteComment,
    TResult? Function(int listId, String username)? createPermission,
    TResult? Function(int listId, String username)? deletePermission,
  }) {
    return createItem?.call(listId, title, description, due);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(int id)? deleteList,
    TResult Function(String title, String description)? editList,
    TResult Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult Function(int id)? deleteItem,
    TResult Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult Function(int itemId, String text)? createComment,
    TResult Function(int id)? deleteComment,
    TResult Function(int listId, String username)? createPermission,
    TResult Function(int listId, String username)? deletePermission,
    required TResult orElse(),
  }) {
    if (createItem != null) {
      return createItem(listId, title, description, due);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(DeleteList value) deleteList,
    required TResult Function(EditList value) editList,
    required TResult Function(CreateItem value) createItem,
    required TResult Function(DeleteItem value) deleteItem,
    required TResult Function(EditItem value) editItem,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(CreatePermission value) createPermission,
    required TResult Function(DeletePermission value) deletePermission,
  }) {
    return createItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(DeleteList value)? deleteList,
    TResult? Function(EditList value)? editList,
    TResult? Function(CreateItem value)? createItem,
    TResult? Function(DeleteItem value)? deleteItem,
    TResult? Function(EditItem value)? editItem,
    TResult? Function(CreateComment value)? createComment,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(CreatePermission value)? createPermission,
    TResult? Function(DeletePermission value)? deletePermission,
  }) {
    return createItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(DeleteList value)? deleteList,
    TResult Function(EditList value)? editList,
    TResult Function(CreateItem value)? createItem,
    TResult Function(DeleteItem value)? deleteItem,
    TResult Function(EditItem value)? editItem,
    TResult Function(CreateComment value)? createComment,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(CreatePermission value)? createPermission,
    TResult Function(DeletePermission value)? deletePermission,
    required TResult orElse(),
  }) {
    if (createItem != null) {
      return createItem(this);
    }
    return orElse();
  }
}

abstract class CreateItem implements ListBlocEvent {
  const factory CreateItem(final int listId, final String title,
      final String description, final DateTime? due) = _$CreateItemImpl;

  int get listId;
  String get title;
  String get description;
  DateTime? get due;
  @JsonKey(ignore: true)
  _$$CreateItemImplCopyWith<_$CreateItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteItemImplCopyWith<$Res> {
  factory _$$DeleteItemImplCopyWith(
          _$DeleteItemImpl value, $Res Function(_$DeleteItemImpl) then) =
      __$$DeleteItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteItemImplCopyWithImpl<$Res>
    extends _$ListBlocEventCopyWithImpl<$Res, _$DeleteItemImpl>
    implements _$$DeleteItemImplCopyWith<$Res> {
  __$$DeleteItemImplCopyWithImpl(
      _$DeleteItemImpl _value, $Res Function(_$DeleteItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteItemImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteItemImpl implements DeleteItem {
  const _$DeleteItemImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ListBlocEvent.deleteItem(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteItemImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteItemImplCopyWith<_$DeleteItemImpl> get copyWith =>
      __$$DeleteItemImplCopyWithImpl<_$DeleteItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(int id) deleteList,
    required TResult Function(String title, String description) editList,
    required TResult Function(
            int listId, String title, String description, DateTime? due)
        createItem,
    required TResult Function(int id) deleteItem,
    required TResult Function(int id, String title, String description,
            DateTime? due, DateTime? done)
        editItem,
    required TResult Function(int itemId, String text) createComment,
    required TResult Function(int id) deleteComment,
    required TResult Function(int listId, String username) createPermission,
    required TResult Function(int listId, String username) deletePermission,
  }) {
    return deleteItem(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(int id)? deleteList,
    TResult? Function(String title, String description)? editList,
    TResult? Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult? Function(int id)? deleteItem,
    TResult? Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult? Function(int itemId, String text)? createComment,
    TResult? Function(int id)? deleteComment,
    TResult? Function(int listId, String username)? createPermission,
    TResult? Function(int listId, String username)? deletePermission,
  }) {
    return deleteItem?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(int id)? deleteList,
    TResult Function(String title, String description)? editList,
    TResult Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult Function(int id)? deleteItem,
    TResult Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult Function(int itemId, String text)? createComment,
    TResult Function(int id)? deleteComment,
    TResult Function(int listId, String username)? createPermission,
    TResult Function(int listId, String username)? deletePermission,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(DeleteList value) deleteList,
    required TResult Function(EditList value) editList,
    required TResult Function(CreateItem value) createItem,
    required TResult Function(DeleteItem value) deleteItem,
    required TResult Function(EditItem value) editItem,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(CreatePermission value) createPermission,
    required TResult Function(DeletePermission value) deletePermission,
  }) {
    return deleteItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(DeleteList value)? deleteList,
    TResult? Function(EditList value)? editList,
    TResult? Function(CreateItem value)? createItem,
    TResult? Function(DeleteItem value)? deleteItem,
    TResult? Function(EditItem value)? editItem,
    TResult? Function(CreateComment value)? createComment,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(CreatePermission value)? createPermission,
    TResult? Function(DeletePermission value)? deletePermission,
  }) {
    return deleteItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(DeleteList value)? deleteList,
    TResult Function(EditList value)? editList,
    TResult Function(CreateItem value)? createItem,
    TResult Function(DeleteItem value)? deleteItem,
    TResult Function(EditItem value)? editItem,
    TResult Function(CreateComment value)? createComment,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(CreatePermission value)? createPermission,
    TResult Function(DeletePermission value)? deletePermission,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(this);
    }
    return orElse();
  }
}

abstract class DeleteItem implements ListBlocEvent {
  const factory DeleteItem(final int id) = _$DeleteItemImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteItemImplCopyWith<_$DeleteItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditItemImplCopyWith<$Res> {
  factory _$$EditItemImplCopyWith(
          _$EditItemImpl value, $Res Function(_$EditItemImpl) then) =
      __$$EditItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      DateTime? due,
      DateTime? done});
}

/// @nodoc
class __$$EditItemImplCopyWithImpl<$Res>
    extends _$ListBlocEventCopyWithImpl<$Res, _$EditItemImpl>
    implements _$$EditItemImplCopyWith<$Res> {
  __$$EditItemImplCopyWithImpl(
      _$EditItemImpl _value, $Res Function(_$EditItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? due = freezed,
    Object? done = freezed,
  }) {
    return _then(_$EditItemImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == due
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$EditItemImpl implements EditItem {
  const _$EditItemImpl(
      this.id, this.title, this.description, this.due, this.done);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime? due;
  @override
  final DateTime? done;

  @override
  String toString() {
    return 'ListBlocEvent.editItem(id: $id, title: $title, description: $description, due: $due, done: $done)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.due, due) || other.due == due) &&
            (identical(other.done, done) || other.done == done));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, due, done);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditItemImplCopyWith<_$EditItemImpl> get copyWith =>
      __$$EditItemImplCopyWithImpl<_$EditItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(int id) deleteList,
    required TResult Function(String title, String description) editList,
    required TResult Function(
            int listId, String title, String description, DateTime? due)
        createItem,
    required TResult Function(int id) deleteItem,
    required TResult Function(int id, String title, String description,
            DateTime? due, DateTime? done)
        editItem,
    required TResult Function(int itemId, String text) createComment,
    required TResult Function(int id) deleteComment,
    required TResult Function(int listId, String username) createPermission,
    required TResult Function(int listId, String username) deletePermission,
  }) {
    return editItem(id, title, description, due, done);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(int id)? deleteList,
    TResult? Function(String title, String description)? editList,
    TResult? Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult? Function(int id)? deleteItem,
    TResult? Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult? Function(int itemId, String text)? createComment,
    TResult? Function(int id)? deleteComment,
    TResult? Function(int listId, String username)? createPermission,
    TResult? Function(int listId, String username)? deletePermission,
  }) {
    return editItem?.call(id, title, description, due, done);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(int id)? deleteList,
    TResult Function(String title, String description)? editList,
    TResult Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult Function(int id)? deleteItem,
    TResult Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult Function(int itemId, String text)? createComment,
    TResult Function(int id)? deleteComment,
    TResult Function(int listId, String username)? createPermission,
    TResult Function(int listId, String username)? deletePermission,
    required TResult orElse(),
  }) {
    if (editItem != null) {
      return editItem(id, title, description, due, done);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(DeleteList value) deleteList,
    required TResult Function(EditList value) editList,
    required TResult Function(CreateItem value) createItem,
    required TResult Function(DeleteItem value) deleteItem,
    required TResult Function(EditItem value) editItem,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(CreatePermission value) createPermission,
    required TResult Function(DeletePermission value) deletePermission,
  }) {
    return editItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(DeleteList value)? deleteList,
    TResult? Function(EditList value)? editList,
    TResult? Function(CreateItem value)? createItem,
    TResult? Function(DeleteItem value)? deleteItem,
    TResult? Function(EditItem value)? editItem,
    TResult? Function(CreateComment value)? createComment,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(CreatePermission value)? createPermission,
    TResult? Function(DeletePermission value)? deletePermission,
  }) {
    return editItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(DeleteList value)? deleteList,
    TResult Function(EditList value)? editList,
    TResult Function(CreateItem value)? createItem,
    TResult Function(DeleteItem value)? deleteItem,
    TResult Function(EditItem value)? editItem,
    TResult Function(CreateComment value)? createComment,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(CreatePermission value)? createPermission,
    TResult Function(DeletePermission value)? deletePermission,
    required TResult orElse(),
  }) {
    if (editItem != null) {
      return editItem(this);
    }
    return orElse();
  }
}

abstract class EditItem implements ListBlocEvent {
  const factory EditItem(
      final int id,
      final String title,
      final String description,
      final DateTime? due,
      final DateTime? done) = _$EditItemImpl;

  int get id;
  String get title;
  String get description;
  DateTime? get due;
  DateTime? get done;
  @JsonKey(ignore: true)
  _$$EditItemImplCopyWith<_$EditItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateCommentImplCopyWith<$Res> {
  factory _$$CreateCommentImplCopyWith(
          _$CreateCommentImpl value, $Res Function(_$CreateCommentImpl) then) =
      __$$CreateCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int itemId, String text});
}

/// @nodoc
class __$$CreateCommentImplCopyWithImpl<$Res>
    extends _$ListBlocEventCopyWithImpl<$Res, _$CreateCommentImpl>
    implements _$$CreateCommentImplCopyWith<$Res> {
  __$$CreateCommentImplCopyWithImpl(
      _$CreateCommentImpl _value, $Res Function(_$CreateCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? text = null,
  }) {
    return _then(_$CreateCommentImpl(
      null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateCommentImpl implements CreateComment {
  const _$CreateCommentImpl(this.itemId, this.text);

  @override
  final int itemId;
  @override
  final String text;

  @override
  String toString() {
    return 'ListBlocEvent.createComment(itemId: $itemId, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCommentImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemId, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCommentImplCopyWith<_$CreateCommentImpl> get copyWith =>
      __$$CreateCommentImplCopyWithImpl<_$CreateCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(int id) deleteList,
    required TResult Function(String title, String description) editList,
    required TResult Function(
            int listId, String title, String description, DateTime? due)
        createItem,
    required TResult Function(int id) deleteItem,
    required TResult Function(int id, String title, String description,
            DateTime? due, DateTime? done)
        editItem,
    required TResult Function(int itemId, String text) createComment,
    required TResult Function(int id) deleteComment,
    required TResult Function(int listId, String username) createPermission,
    required TResult Function(int listId, String username) deletePermission,
  }) {
    return createComment(itemId, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(int id)? deleteList,
    TResult? Function(String title, String description)? editList,
    TResult? Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult? Function(int id)? deleteItem,
    TResult? Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult? Function(int itemId, String text)? createComment,
    TResult? Function(int id)? deleteComment,
    TResult? Function(int listId, String username)? createPermission,
    TResult? Function(int listId, String username)? deletePermission,
  }) {
    return createComment?.call(itemId, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(int id)? deleteList,
    TResult Function(String title, String description)? editList,
    TResult Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult Function(int id)? deleteItem,
    TResult Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult Function(int itemId, String text)? createComment,
    TResult Function(int id)? deleteComment,
    TResult Function(int listId, String username)? createPermission,
    TResult Function(int listId, String username)? deletePermission,
    required TResult orElse(),
  }) {
    if (createComment != null) {
      return createComment(itemId, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(DeleteList value) deleteList,
    required TResult Function(EditList value) editList,
    required TResult Function(CreateItem value) createItem,
    required TResult Function(DeleteItem value) deleteItem,
    required TResult Function(EditItem value) editItem,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(CreatePermission value) createPermission,
    required TResult Function(DeletePermission value) deletePermission,
  }) {
    return createComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(DeleteList value)? deleteList,
    TResult? Function(EditList value)? editList,
    TResult? Function(CreateItem value)? createItem,
    TResult? Function(DeleteItem value)? deleteItem,
    TResult? Function(EditItem value)? editItem,
    TResult? Function(CreateComment value)? createComment,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(CreatePermission value)? createPermission,
    TResult? Function(DeletePermission value)? deletePermission,
  }) {
    return createComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(DeleteList value)? deleteList,
    TResult Function(EditList value)? editList,
    TResult Function(CreateItem value)? createItem,
    TResult Function(DeleteItem value)? deleteItem,
    TResult Function(EditItem value)? editItem,
    TResult Function(CreateComment value)? createComment,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(CreatePermission value)? createPermission,
    TResult Function(DeletePermission value)? deletePermission,
    required TResult orElse(),
  }) {
    if (createComment != null) {
      return createComment(this);
    }
    return orElse();
  }
}

abstract class CreateComment implements ListBlocEvent {
  const factory CreateComment(final int itemId, final String text) =
      _$CreateCommentImpl;

  int get itemId;
  String get text;
  @JsonKey(ignore: true)
  _$$CreateCommentImplCopyWith<_$CreateCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCommentImplCopyWith<$Res> {
  factory _$$DeleteCommentImplCopyWith(
          _$DeleteCommentImpl value, $Res Function(_$DeleteCommentImpl) then) =
      __$$DeleteCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteCommentImplCopyWithImpl<$Res>
    extends _$ListBlocEventCopyWithImpl<$Res, _$DeleteCommentImpl>
    implements _$$DeleteCommentImplCopyWith<$Res> {
  __$$DeleteCommentImplCopyWithImpl(
      _$DeleteCommentImpl _value, $Res Function(_$DeleteCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteCommentImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteCommentImpl implements DeleteComment {
  const _$DeleteCommentImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ListBlocEvent.deleteComment(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCommentImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCommentImplCopyWith<_$DeleteCommentImpl> get copyWith =>
      __$$DeleteCommentImplCopyWithImpl<_$DeleteCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(int id) deleteList,
    required TResult Function(String title, String description) editList,
    required TResult Function(
            int listId, String title, String description, DateTime? due)
        createItem,
    required TResult Function(int id) deleteItem,
    required TResult Function(int id, String title, String description,
            DateTime? due, DateTime? done)
        editItem,
    required TResult Function(int itemId, String text) createComment,
    required TResult Function(int id) deleteComment,
    required TResult Function(int listId, String username) createPermission,
    required TResult Function(int listId, String username) deletePermission,
  }) {
    return deleteComment(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(int id)? deleteList,
    TResult? Function(String title, String description)? editList,
    TResult? Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult? Function(int id)? deleteItem,
    TResult? Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult? Function(int itemId, String text)? createComment,
    TResult? Function(int id)? deleteComment,
    TResult? Function(int listId, String username)? createPermission,
    TResult? Function(int listId, String username)? deletePermission,
  }) {
    return deleteComment?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(int id)? deleteList,
    TResult Function(String title, String description)? editList,
    TResult Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult Function(int id)? deleteItem,
    TResult Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult Function(int itemId, String text)? createComment,
    TResult Function(int id)? deleteComment,
    TResult Function(int listId, String username)? createPermission,
    TResult Function(int listId, String username)? deletePermission,
    required TResult orElse(),
  }) {
    if (deleteComment != null) {
      return deleteComment(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(DeleteList value) deleteList,
    required TResult Function(EditList value) editList,
    required TResult Function(CreateItem value) createItem,
    required TResult Function(DeleteItem value) deleteItem,
    required TResult Function(EditItem value) editItem,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(CreatePermission value) createPermission,
    required TResult Function(DeletePermission value) deletePermission,
  }) {
    return deleteComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(DeleteList value)? deleteList,
    TResult? Function(EditList value)? editList,
    TResult? Function(CreateItem value)? createItem,
    TResult? Function(DeleteItem value)? deleteItem,
    TResult? Function(EditItem value)? editItem,
    TResult? Function(CreateComment value)? createComment,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(CreatePermission value)? createPermission,
    TResult? Function(DeletePermission value)? deletePermission,
  }) {
    return deleteComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(DeleteList value)? deleteList,
    TResult Function(EditList value)? editList,
    TResult Function(CreateItem value)? createItem,
    TResult Function(DeleteItem value)? deleteItem,
    TResult Function(EditItem value)? editItem,
    TResult Function(CreateComment value)? createComment,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(CreatePermission value)? createPermission,
    TResult Function(DeletePermission value)? deletePermission,
    required TResult orElse(),
  }) {
    if (deleteComment != null) {
      return deleteComment(this);
    }
    return orElse();
  }
}

abstract class DeleteComment implements ListBlocEvent {
  const factory DeleteComment(final int id) = _$DeleteCommentImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteCommentImplCopyWith<_$DeleteCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatePermissionImplCopyWith<$Res> {
  factory _$$CreatePermissionImplCopyWith(_$CreatePermissionImpl value,
          $Res Function(_$CreatePermissionImpl) then) =
      __$$CreatePermissionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int listId, String username});
}

/// @nodoc
class __$$CreatePermissionImplCopyWithImpl<$Res>
    extends _$ListBlocEventCopyWithImpl<$Res, _$CreatePermissionImpl>
    implements _$$CreatePermissionImplCopyWith<$Res> {
  __$$CreatePermissionImplCopyWithImpl(_$CreatePermissionImpl _value,
      $Res Function(_$CreatePermissionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listId = null,
    Object? username = null,
  }) {
    return _then(_$CreatePermissionImpl(
      null == listId
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
              as int,
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreatePermissionImpl implements CreatePermission {
  const _$CreatePermissionImpl(this.listId, this.username);

  @override
  final int listId;
  @override
  final String username;

  @override
  String toString() {
    return 'ListBlocEvent.createPermission(listId: $listId, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePermissionImpl &&
            (identical(other.listId, listId) || other.listId == listId) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listId, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePermissionImplCopyWith<_$CreatePermissionImpl> get copyWith =>
      __$$CreatePermissionImplCopyWithImpl<_$CreatePermissionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(int id) deleteList,
    required TResult Function(String title, String description) editList,
    required TResult Function(
            int listId, String title, String description, DateTime? due)
        createItem,
    required TResult Function(int id) deleteItem,
    required TResult Function(int id, String title, String description,
            DateTime? due, DateTime? done)
        editItem,
    required TResult Function(int itemId, String text) createComment,
    required TResult Function(int id) deleteComment,
    required TResult Function(int listId, String username) createPermission,
    required TResult Function(int listId, String username) deletePermission,
  }) {
    return createPermission(listId, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(int id)? deleteList,
    TResult? Function(String title, String description)? editList,
    TResult? Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult? Function(int id)? deleteItem,
    TResult? Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult? Function(int itemId, String text)? createComment,
    TResult? Function(int id)? deleteComment,
    TResult? Function(int listId, String username)? createPermission,
    TResult? Function(int listId, String username)? deletePermission,
  }) {
    return createPermission?.call(listId, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(int id)? deleteList,
    TResult Function(String title, String description)? editList,
    TResult Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult Function(int id)? deleteItem,
    TResult Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult Function(int itemId, String text)? createComment,
    TResult Function(int id)? deleteComment,
    TResult Function(int listId, String username)? createPermission,
    TResult Function(int listId, String username)? deletePermission,
    required TResult orElse(),
  }) {
    if (createPermission != null) {
      return createPermission(listId, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(DeleteList value) deleteList,
    required TResult Function(EditList value) editList,
    required TResult Function(CreateItem value) createItem,
    required TResult Function(DeleteItem value) deleteItem,
    required TResult Function(EditItem value) editItem,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(CreatePermission value) createPermission,
    required TResult Function(DeletePermission value) deletePermission,
  }) {
    return createPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(DeleteList value)? deleteList,
    TResult? Function(EditList value)? editList,
    TResult? Function(CreateItem value)? createItem,
    TResult? Function(DeleteItem value)? deleteItem,
    TResult? Function(EditItem value)? editItem,
    TResult? Function(CreateComment value)? createComment,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(CreatePermission value)? createPermission,
    TResult? Function(DeletePermission value)? deletePermission,
  }) {
    return createPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(DeleteList value)? deleteList,
    TResult Function(EditList value)? editList,
    TResult Function(CreateItem value)? createItem,
    TResult Function(DeleteItem value)? deleteItem,
    TResult Function(EditItem value)? editItem,
    TResult Function(CreateComment value)? createComment,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(CreatePermission value)? createPermission,
    TResult Function(DeletePermission value)? deletePermission,
    required TResult orElse(),
  }) {
    if (createPermission != null) {
      return createPermission(this);
    }
    return orElse();
  }
}

abstract class CreatePermission implements ListBlocEvent {
  const factory CreatePermission(final int listId, final String username) =
      _$CreatePermissionImpl;

  int get listId;
  String get username;
  @JsonKey(ignore: true)
  _$$CreatePermissionImplCopyWith<_$CreatePermissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePermissionImplCopyWith<$Res> {
  factory _$$DeletePermissionImplCopyWith(_$DeletePermissionImpl value,
          $Res Function(_$DeletePermissionImpl) then) =
      __$$DeletePermissionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int listId, String username});
}

/// @nodoc
class __$$DeletePermissionImplCopyWithImpl<$Res>
    extends _$ListBlocEventCopyWithImpl<$Res, _$DeletePermissionImpl>
    implements _$$DeletePermissionImplCopyWith<$Res> {
  __$$DeletePermissionImplCopyWithImpl(_$DeletePermissionImpl _value,
      $Res Function(_$DeletePermissionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listId = null,
    Object? username = null,
  }) {
    return _then(_$DeletePermissionImpl(
      null == listId
          ? _value.listId
          : listId // ignore: cast_nullable_to_non_nullable
              as int,
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletePermissionImpl implements DeletePermission {
  const _$DeletePermissionImpl(this.listId, this.username);

  @override
  final int listId;
  @override
  final String username;

  @override
  String toString() {
    return 'ListBlocEvent.deletePermission(listId: $listId, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePermissionImpl &&
            (identical(other.listId, listId) || other.listId == listId) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listId, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePermissionImplCopyWith<_$DeletePermissionImpl> get copyWith =>
      __$$DeletePermissionImplCopyWithImpl<_$DeletePermissionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(int id) deleteList,
    required TResult Function(String title, String description) editList,
    required TResult Function(
            int listId, String title, String description, DateTime? due)
        createItem,
    required TResult Function(int id) deleteItem,
    required TResult Function(int id, String title, String description,
            DateTime? due, DateTime? done)
        editItem,
    required TResult Function(int itemId, String text) createComment,
    required TResult Function(int id) deleteComment,
    required TResult Function(int listId, String username) createPermission,
    required TResult Function(int listId, String username) deletePermission,
  }) {
    return deletePermission(listId, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(int id)? deleteList,
    TResult? Function(String title, String description)? editList,
    TResult? Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult? Function(int id)? deleteItem,
    TResult? Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult? Function(int itemId, String text)? createComment,
    TResult? Function(int id)? deleteComment,
    TResult? Function(int listId, String username)? createPermission,
    TResult? Function(int listId, String username)? deletePermission,
  }) {
    return deletePermission?.call(listId, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(int id)? deleteList,
    TResult Function(String title, String description)? editList,
    TResult Function(
            int listId, String title, String description, DateTime? due)?
        createItem,
    TResult Function(int id)? deleteItem,
    TResult Function(int id, String title, String description, DateTime? due,
            DateTime? done)?
        editItem,
    TResult Function(int itemId, String text)? createComment,
    TResult Function(int id)? deleteComment,
    TResult Function(int listId, String username)? createPermission,
    TResult Function(int listId, String username)? deletePermission,
    required TResult orElse(),
  }) {
    if (deletePermission != null) {
      return deletePermission(listId, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(DeleteList value) deleteList,
    required TResult Function(EditList value) editList,
    required TResult Function(CreateItem value) createItem,
    required TResult Function(DeleteItem value) deleteItem,
    required TResult Function(EditItem value) editItem,
    required TResult Function(CreateComment value) createComment,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(CreatePermission value) createPermission,
    required TResult Function(DeletePermission value) deletePermission,
  }) {
    return deletePermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(DeleteList value)? deleteList,
    TResult? Function(EditList value)? editList,
    TResult? Function(CreateItem value)? createItem,
    TResult? Function(DeleteItem value)? deleteItem,
    TResult? Function(EditItem value)? editItem,
    TResult? Function(CreateComment value)? createComment,
    TResult? Function(DeleteComment value)? deleteComment,
    TResult? Function(CreatePermission value)? createPermission,
    TResult? Function(DeletePermission value)? deletePermission,
  }) {
    return deletePermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(DeleteList value)? deleteList,
    TResult Function(EditList value)? editList,
    TResult Function(CreateItem value)? createItem,
    TResult Function(DeleteItem value)? deleteItem,
    TResult Function(EditItem value)? editItem,
    TResult Function(CreateComment value)? createComment,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(CreatePermission value)? createPermission,
    TResult Function(DeletePermission value)? deletePermission,
    required TResult orElse(),
  }) {
    if (deletePermission != null) {
      return deletePermission(this);
    }
    return orElse();
  }
}

abstract class DeletePermission implements ListBlocEvent {
  const factory DeletePermission(final int listId, final String username) =
      _$DeletePermissionImpl;

  int get listId;
  String get username;
  @JsonKey(ignore: true)
  _$$DeletePermissionImplCopyWith<_$DeletePermissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
