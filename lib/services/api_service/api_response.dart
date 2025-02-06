import 'package:json_annotation/json_annotation.dart';

part 'api_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiResponse<T> {

  @JsonKey(name: 'status')
  final bool success;

  @JsonKey(name: 'message', defaultValue: '')
  final String message;

  @JsonKey(name: 'data')
  final T? jsonData;

  @JsonKey(name: 'jwt', defaultValue: '')
  final String bearerToken;

  ApiResponse({
    this.message = '',
    this.jsonData,
    this.success = false,
    this.bearerToken = '',
  });

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ApiResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$ApiResponseToJson(this, toJsonT);
}
