// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Payment _$_$PaymentFromJson(Map<String, dynamic> json) {
  return _$Payment(
    name: json['name'] as String,
    url: json['url'] as String,
    amount: (json['amount'] as num).toDouble(),
    user: User.fromJson(json['user'] as Map<String, dynamic>),
    createdAt: json['createdAt'] as String,
  );
}

Map<String, dynamic> _$_$PaymentToJson(_$Payment instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'amount': instance.amount,
      'user': instance.user,
      'createdAt': instance.createdAt,
    };
