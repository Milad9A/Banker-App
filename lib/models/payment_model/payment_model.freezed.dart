// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) {
  return Payment.fromJson(json);
}

/// @nodoc
class _$PaymentModelTearOff {
  const _$PaymentModelTearOff();

  Payment call(
      {@JsonKey(name: 'name') required String name,
      @JsonKey(name: 'url') required String url,
      @JsonKey(name: 'amount') required double amount,
      @JsonKey(name: 'user') required User user,
      @JsonKey(name: 'createdAt') required String createdAt}) {
    return Payment(
      name: name,
      url: url,
      amount: amount,
      user: user,
      createdAt: createdAt,
    );
  }

  PaymentModel fromJson(Map<String, Object> json) {
    return PaymentModel.fromJson(json);
  }
}

/// @nodoc
const $PaymentModel = _$PaymentModelTearOff();

/// @nodoc
mixin _$PaymentModel {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  User get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentModelCopyWith<PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentModelCopyWith<$Res> {
  factory $PaymentModelCopyWith(
          PaymentModel value, $Res Function(PaymentModel) then) =
      _$PaymentModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'amount') double amount,
      @JsonKey(name: 'user') User user,
      @JsonKey(name: 'createdAt') String createdAt});
}

/// @nodoc
class _$PaymentModelCopyWithImpl<$Res> implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._value, this._then);

  final PaymentModel _value;
  // ignore: unused_field
  final $Res Function(PaymentModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? amount = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> implements $PaymentModelCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'amount') double amount,
      @JsonKey(name: 'user') User user,
      @JsonKey(name: 'createdAt') String createdAt});
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res> extends _$PaymentModelCopyWithImpl<$Res>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(Payment _value, $Res Function(Payment) _then)
      : super(_value, (v) => _then(v as Payment));

  @override
  Payment get _value => super._value as Payment;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? amount = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(Payment(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$Payment with DiagnosticableTreeMixin implements Payment {
  const _$Payment(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'url') required this.url,
      @JsonKey(name: 'amount') required this.amount,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'createdAt') required this.createdAt});

  factory _$Payment.fromJson(Map<String, dynamic> json) =>
      _$_$PaymentFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'url')
  final String url;
  @override
  @JsonKey(name: 'amount')
  final double amount;
  @override
  @JsonKey(name: 'user')
  final User user;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentModel(name: $name, url: $url, amount: $amount, user: $user, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Payment &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  $PaymentCopyWith<Payment> get copyWith =>
      _$PaymentCopyWithImpl<Payment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$PaymentToJson(this);
  }
}

abstract class Payment implements PaymentModel {
  const factory Payment(
      {@JsonKey(name: 'name') required String name,
      @JsonKey(name: 'url') required String url,
      @JsonKey(name: 'amount') required double amount,
      @JsonKey(name: 'user') required User user,
      @JsonKey(name: 'createdAt') required String createdAt}) = _$Payment;

  factory Payment.fromJson(Map<String, dynamic> json) = _$Payment.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'amount')
  double get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user')
  User get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}
