import 'package:banker/models/user_model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'payment_model.freezed.dart';
part 'payment_model.g.dart';

@freezed
abstract class PaymentModel with _$PaymentModel {
  const factory PaymentModel({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'url') required String url,
    @JsonKey(name: 'amount') required double amount,
    @JsonKey(name: 'user') required User user,
    @JsonKey(name: 'createdAt') required String createdAt,
  }) = Payment;

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);
}
