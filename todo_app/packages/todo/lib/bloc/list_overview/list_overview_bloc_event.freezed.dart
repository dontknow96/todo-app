// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_overview_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListOverviewBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String title, String description, String category)
        createList,
    required TResult Function(String category) selectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String title, String description, String category)?
        createList,
    TResult? Function(String category)? selectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String title, String description, String category)?
        createList,
    TResult Function(String category)? selectCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(CreateList value) createList,
    required TResult Function(SelectCategory value) selectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(CreateList value)? createList,
    TResult? Function(SelectCategory value)? selectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(CreateList value)? createList,
    TResult Function(SelectCategory value)? selectCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOverviewBlocEventCopyWith<$Res> {
  factory $ListOverviewBlocEventCopyWith(ListOverviewBlocEvent value,
          $Res Function(ListOverviewBlocEvent) then) =
      _$ListOverviewBlocEventCopyWithImpl<$Res, ListOverviewBlocEvent>;
}

/// @nodoc
class _$ListOverviewBlocEventCopyWithImpl<$Res,
        $Val extends ListOverviewBlocEvent>
    implements $ListOverviewBlocEventCopyWith<$Res> {
  _$ListOverviewBlocEventCopyWithImpl(this._value, this._then);

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
    extends _$ListOverviewBlocEventCopyWithImpl<$Res, _$RefreshImpl>
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
    return 'ListOverviewBlocEvent.refresh()';
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
    required TResult Function(String title, String description, String category)
        createList,
    required TResult Function(String category) selectCategory,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String title, String description, String category)?
        createList,
    TResult? Function(String category)? selectCategory,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String title, String description, String category)?
        createList,
    TResult Function(String category)? selectCategory,
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
    required TResult Function(CreateList value) createList,
    required TResult Function(SelectCategory value) selectCategory,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(CreateList value)? createList,
    TResult? Function(SelectCategory value)? selectCategory,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(CreateList value)? createList,
    TResult Function(SelectCategory value)? selectCategory,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements ListOverviewBlocEvent {
  const factory Refresh() = _$RefreshImpl;
}

/// @nodoc
abstract class _$$CreateListImplCopyWith<$Res> {
  factory _$$CreateListImplCopyWith(
          _$CreateListImpl value, $Res Function(_$CreateListImpl) then) =
      __$$CreateListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String description, String category});
}

/// @nodoc
class __$$CreateListImplCopyWithImpl<$Res>
    extends _$ListOverviewBlocEventCopyWithImpl<$Res, _$CreateListImpl>
    implements _$$CreateListImplCopyWith<$Res> {
  __$$CreateListImplCopyWithImpl(
      _$CreateListImpl _value, $Res Function(_$CreateListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? category = null,
  }) {
    return _then(_$CreateListImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateListImpl implements CreateList {
  const _$CreateListImpl(this.title, this.description, this.category);

  @override
  final String title;
  @override
  final String description;
  @override
  final String category;

  @override
  String toString() {
    return 'ListOverviewBlocEvent.createList(title: $title, description: $description, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateListImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateListImplCopyWith<_$CreateListImpl> get copyWith =>
      __$$CreateListImplCopyWithImpl<_$CreateListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String title, String description, String category)
        createList,
    required TResult Function(String category) selectCategory,
  }) {
    return createList(title, description, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String title, String description, String category)?
        createList,
    TResult? Function(String category)? selectCategory,
  }) {
    return createList?.call(title, description, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String title, String description, String category)?
        createList,
    TResult Function(String category)? selectCategory,
    required TResult orElse(),
  }) {
    if (createList != null) {
      return createList(title, description, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(CreateList value) createList,
    required TResult Function(SelectCategory value) selectCategory,
  }) {
    return createList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(CreateList value)? createList,
    TResult? Function(SelectCategory value)? selectCategory,
  }) {
    return createList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(CreateList value)? createList,
    TResult Function(SelectCategory value)? selectCategory,
    required TResult orElse(),
  }) {
    if (createList != null) {
      return createList(this);
    }
    return orElse();
  }
}

abstract class CreateList implements ListOverviewBlocEvent {
  const factory CreateList(
          final String title, final String description, final String category) =
      _$CreateListImpl;

  String get title;
  String get description;
  String get category;
  @JsonKey(ignore: true)
  _$$CreateListImplCopyWith<_$CreateListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectCategoryImplCopyWith<$Res> {
  factory _$$SelectCategoryImplCopyWith(_$SelectCategoryImpl value,
          $Res Function(_$SelectCategoryImpl) then) =
      __$$SelectCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$SelectCategoryImplCopyWithImpl<$Res>
    extends _$ListOverviewBlocEventCopyWithImpl<$Res, _$SelectCategoryImpl>
    implements _$$SelectCategoryImplCopyWith<$Res> {
  __$$SelectCategoryImplCopyWithImpl(
      _$SelectCategoryImpl _value, $Res Function(_$SelectCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$SelectCategoryImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectCategoryImpl implements SelectCategory {
  const _$SelectCategoryImpl(this.category);

  @override
  final String category;

  @override
  String toString() {
    return 'ListOverviewBlocEvent.selectCategory(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCategoryImplCopyWith<_$SelectCategoryImpl> get copyWith =>
      __$$SelectCategoryImplCopyWithImpl<_$SelectCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String title, String description, String category)
        createList,
    required TResult Function(String category) selectCategory,
  }) {
    return selectCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String title, String description, String category)?
        createList,
    TResult? Function(String category)? selectCategory,
  }) {
    return selectCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String title, String description, String category)?
        createList,
    TResult Function(String category)? selectCategory,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(CreateList value) createList,
    required TResult Function(SelectCategory value) selectCategory,
  }) {
    return selectCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh value)? refresh,
    TResult? Function(CreateList value)? createList,
    TResult? Function(SelectCategory value)? selectCategory,
  }) {
    return selectCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(CreateList value)? createList,
    TResult Function(SelectCategory value)? selectCategory,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(this);
    }
    return orElse();
  }
}

abstract class SelectCategory implements ListOverviewBlocEvent {
  const factory SelectCategory(final String category) = _$SelectCategoryImpl;

  String get category;
  @JsonKey(ignore: true)
  _$$SelectCategoryImplCopyWith<_$SelectCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
