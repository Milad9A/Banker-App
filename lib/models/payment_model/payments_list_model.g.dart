// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payments_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentsList _$_$PaymentsListFromJson(Map<String, dynamic> json) {
  return _$PaymentsList(
    paymentsList: (json['paymentsList'] as List<dynamic>)
        .map((e) => Payment.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$PaymentsListToJson(_$PaymentsList instance) =>
    <String, dynamic>{
      'paymentsList': instance.paymentsList,
    };
