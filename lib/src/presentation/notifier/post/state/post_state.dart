import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_state.freezed.dart';

@freezed
class PostState with _$PostState {
  factory PostState({
    @Default([])  List<File> media,
    @Default(true)  bool allowComments,
    @Default(null)  TextEditingController? desCon,
  }) = _PostState;
}