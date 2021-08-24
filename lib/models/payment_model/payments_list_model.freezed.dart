// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'payments_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentsListModel _$PaymentsListModelFromJson(Map<String, dynamic> json) {
  return PaymentsList.fromJson(json);
}

/// @nodoc
class _$PaymentsListModelTearOff {
  const _$PaymentsListModelTearOff();

  PaymentsList call({required List<Payment> paymentsList}) {
    return PaymentsList(
      paymentsList: paymentsList,
    );
  }

  PaymentsListModel fromJson(Map<String, Object> json) {
    return PaymentsListModel.fromJson(json);
  }
}

/// @nodoc
const $PaymentsListModel = _$PaymentsListModelTearOff();

/// @nodoc
mixin _$PaymentsListModel {
  List<Payment> get paymentsList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentsListModelCopyWith<PaymentsListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentsListModelCopyWith<$Res> {
  factory $PaymentsListModelCopyWith(
          PaymentsListModel value, $Res Function(PaymentsListModel) then) =
      _$PaymentsListModelCopyWithImpl<$Res>;
  $Res call({List<Payment> paymentsList});
}

/// @nodoc
class _$PaymentsListModelCopyWithImpl<$Res>
    implements $PaymentsListModelCopyWith<$Res> {
  _$PaymentsListModelCopyWithImpl(this._value, this._then);

  final PaymentsListModel _value;
  // ignore: unused_field
  final $Res Function(PaymentsListModel) _then;

  @override
  $Res call({
    Object? paymentsList = freezed,
  }) {
    return _then(_value.copyWith(
      paymentsList: paymentsList == freezed
          ? _value.paymentsList
          : paymentsList // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
    ));
  }
}

/// @nodoc
abstract class $PaymentsListCopyWith<$Res>
    implements $PaymentsListModelCopyWith<$Res> {
  factory $PaymentsListCopyWith(
          PaymentsList value, $Res Function(PaymentsList) then) =
      _$PaymentsListCopyWithImpl<$Res>;
  @override
  $Res call({List<Payment> paymentsList});
}

/// @nodoc
class _$PaymentsListCopyWithImpl<$Res>
    extends _$PaymentsListModelCopyWithImpl<$Res>
    implements $PaymentsListCopyWith<$Res> {
  _$PaymentsListCopyWithImpl(
      PaymentsList _value, $Res Function(PaymentsList) _then)
      : super(_value, (v) => _then(v as PaymentsList));

  @override
  PaymentsList get _value => super._value as PaymentsList;

  @override
  $Res call({
    Object? paymentsList = freezed,
  }) {
    return _then(PaymentsList(
      paymentsList: paymentsList == freezed
          ? _value.paymentsList
          : paymentsList // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$PaymentsList with DiagnosticableTreeMixin implements PaymentsList {
  const _$PaymentsList({required this.paymentsList});

  factory _$PaymentsList.fromJson(Map<String, dynamic> json) =>
      _$_$PaymentsListFromJson(json);

  @override
  final List<Payment> paymentsList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentsListModel(paymentsList: $paymentsList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentsListModel'))
      ..add(DiagnosticsProperty('paymentsList', paymentsList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaymentsList &&
            (identical(other.paymentsList, paymentsList) ||
                const DeepCollectionEquality()
                    .equals(other.paymentsList, paymentsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(paymentsList);

  @JsonKey(ignore: true)
  @override
  $PaymentsListCopyWith<PaymentsList> get copyWith =>
      _$PaymentsListCopyWithImpl<PaymentsList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$PaymentsListToJson(this);
  }
}

abstract class PaymentsList implements PaymentsListModel {
  const factory PaymentsList({required List<Payment> paymentsList}) =
      _$PaymentsList;

  factory PaymentsList.fromJson(Map<String, dynamic> json) =
      _$PaymentsList.fromJson;

  @override
  List<Payment> get paymentsList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PaymentsListCopyWith<PaymentsList> get copyWith =>
      throw _privateConstructorUsedError;
}
