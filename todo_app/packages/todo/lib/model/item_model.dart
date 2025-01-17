import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_model.freezed.dart';

part 'item_model.g.dart';

@freezed
class ItemModel with _$ItemModel {
  const factory ItemModel({
    required int id,
    required int? listid,
    required String title,
    required String description,
    required DateTime due,
    required DateTime done,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) => _$ItemModelFromJson(json);
}
