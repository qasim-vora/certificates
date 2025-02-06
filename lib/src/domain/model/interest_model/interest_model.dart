import 'package:freezed_annotation/freezed_annotation.dart';
part 'interest_model.g.dart';
part 'interest_model.freezed.dart';


@freezed
class InterestModel with _$InterestModel {
  const factory InterestModel({
    @JsonKey(name: "_id")
    required String interestId,
    required String title,

    @JsonKey(includeFromJson: false,includeToJson: false,defaultValue: false)
    bool? isSelected
  }) = _InterestModel;

  factory InterestModel.fromJson(Map<String, dynamic> json) => _$InterestModelFromJson(json);

}
