// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$User _$_$UserFromJson(Map<String, dynamic> json) {
  return _$User(
    name: json['name'] as String,
    email: json['email'] as String,
    balance: (json['balance'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$UserToJson(_$User instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'balance': instance.balance,
    };
