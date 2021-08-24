import 'package:banker/models/payment_model/payment_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'payments_list_model.freezed.dart';
part 'payments_list_model.g.dart';

@freezed
abstract class PaymentsListModel with _$PaymentsListModel {
  const factory PaymentsListModel({
    required List<Payment> paymentsList,
  }) = PaymentsList;

  factory PaymentsListModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentsListModelFromJson(json);
}
