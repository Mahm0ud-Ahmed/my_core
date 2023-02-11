// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
part 'message_model.freezed.dart';
part 'message_model.g.dart';
@freezed
class MessageModel with _$MessageModel{
  const factory MessageModel({
    final int? id,
    final String? message,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) => _$MessageModelFromJson(json);

}
