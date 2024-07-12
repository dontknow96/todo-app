import 'package:freezed_annotation/freezed_annotation.dart';


part 'list_model.freezed.dart';
part 'list_model.g.dart';

@freezed
class ListModel with _$ListModel{
  const factory ListModel({
    required int id,
    required int ownerid,
    required String ownerusername,
    required String title,
    required String description,
    required String category,
  }) = _ListModel;

  factory ListModel.fromJson(Map<String, dynamic> json) => _$ListModelFromJson(json);
}