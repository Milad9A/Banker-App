// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaymentEventTearOff {
  const _$PaymentEventTearOff();

  _Started started() {
    return const _Started();
  }

  GetPayments getPayments() {
    return const GetPayments();
  }
}

/// @nodoc
const $PaymentEvent = _$PaymentEventTearOff();

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getPayments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getPayments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetPayments value) getPayments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetPayments value)? getPayments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res> implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  final PaymentEvent _value;
  // ignore: unused_field
  final $Res Function(PaymentEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$PaymentEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'PaymentEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getPayments,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getPayments,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetPayments value) getPayments,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetPayments value)? getPayments,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PaymentEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $GetPaymentsCopyWith<$Res> {
  factory $GetPaymentsCopyWith(
          GetPayments value, $Res Function(GetPayments) then) =
      _$GetPaymentsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPaymentsCopyWithImpl<$Res> extends _$PaymentEventCopyWithImpl<$Res>
    implements $GetPaymentsCopyWith<$Res> {
  _$GetPaymentsCopyWithImpl(
      GetPayments _value, $Res Function(GetPayments) _then)
      : super(_value, (v) => _then(v as GetPayments));

  @override
  GetPayments get _value => super._value as GetPayments;
}

/// @nodoc
class _$GetPayments implements GetPayments {
  const _$GetPayments();

  @override
  String toString() {
    return 'PaymentEvent.getPayments()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetPayments);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getPayments,
  }) {
    return getPayments();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getPayments,
    required TResult orElse(),
  }) {
    if (getPayments != null) {
      return getPayments();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetPayments value) getPayments,
  }) {
    return getPayments(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetPayments value)? getPayments,
    required TResult orElse(),
  }) {
    if (getPayments != null) {
      return getPayments(this);
    }
    return orElse();
  }
}

abstract class GetPayments implements PaymentEvent {
  const factory GetPayments() = _$GetPayments;
}

/// @nodoc
class _$PaymentStateTearOff {
  const _$PaymentStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  PaymentLoading loading() {
    return const PaymentLoading();
  }

  PaymentSuccess success({required List<Payment> paymentsList}) {
    return PaymentSuccess(
      paymentsList: paymentsList,
    );
  }

  PaymentError error({required NetworkExceptions error}) {
    return PaymentError(
      error: error,
    );
  }
}

/// @nodoc
const $PaymentState = _$PaymentStateTearOff();

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Payment> paymentsList) success,
    required TResult Function(NetworkExceptions error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Payment> paymentsList)? success,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PaymentLoading value) loading,
    required TResult Function(PaymentSuccess value) success,
    required TResult Function(PaymentError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentSuccess value)? success,
    TResult Function(PaymentError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res> implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  final PaymentState _value;
  // ignore: unused_field
  final $Res Function(PaymentState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PaymentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Payment> paymentsList) success,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Payment> paymentsList)? success,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PaymentLoading value) loading,
    required TResult Function(PaymentSuccess value) success,
    required TResult Function(PaymentError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentSuccess value)? success,
    TResult Function(PaymentError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PaymentState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class $PaymentLoadingCopyWith<$Res> {
  factory $PaymentLoadingCopyWith(
          PaymentLoading value, $Res Function(PaymentLoading) then) =
      _$PaymentLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentLoadingCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements $PaymentLoadingCopyWith<$Res> {
  _$PaymentLoadingCopyWithImpl(
      PaymentLoading _value, $Res Function(PaymentLoading) _then)
      : super(_value, (v) => _then(v as PaymentLoading));

  @override
  PaymentLoading get _value => super._value as PaymentLoading;
}

/// @nodoc
class _$PaymentLoading implements PaymentLoading {
  const _$PaymentLoading();

  @override
  String toString() {
    return 'PaymentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PaymentLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Payment> paymentsList) success,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Payment> paymentsList)? success,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PaymentLoading value) loading,
    required TResult Function(PaymentSuccess value) success,
    required TResult Function(PaymentError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentSuccess value)? success,
    TResult Function(PaymentError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PaymentLoading implements PaymentState {
  const factory PaymentLoading() = _$PaymentLoading;
}

/// @nodoc
abstract class $PaymentSuccessCopyWith<$Res> {
  factory $PaymentSuccessCopyWith(
          PaymentSuccess value, $Res Function(PaymentSuccess) then) =
      _$PaymentSuccessCopyWithImpl<$Res>;
  $Res call({List<Payment> paymentsList});
}

/// @nodoc
class _$PaymentSuccessCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements $PaymentSuccessCopyWith<$Res> {
  _$PaymentSuccessCopyWithImpl(
      PaymentSuccess _value, $Res Function(PaymentSuccess) _then)
      : super(_value, (v) => _then(v as PaymentSuccess));

  @override
  PaymentSuccess get _value => super._value as PaymentSuccess;

  @override
  $Res call({
    Object? paymentsList = freezed,
  }) {
    return _then(PaymentSuccess(
      paymentsList: paymentsList == freezed
          ? _value.paymentsList
          : paymentsList // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
    ));
  }
}

/// @nodoc
class _$PaymentSuccess implements PaymentSuccess {
  const _$PaymentSuccess({required this.paymentsList});

  @override
  final List<Payment> paymentsList;

  @override
  String toString() {
    return 'PaymentState.success(paymentsList: $paymentsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaymentSuccess &&
            (identical(other.paymentsList, paymentsList) ||
                const DeepCollectionEquality()
                    .equals(other.paymentsList, paymentsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(paymentsList);

  @JsonKey(ignore: true)
  @override
  $PaymentSuccessCopyWith<PaymentSuccess> get copyWith =>
      _$PaymentSuccessCopyWithImpl<PaymentSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Payment> paymentsList) success,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return success(paymentsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Payment> paymentsList)? success,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(paymentsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PaymentLoading value) loading,
    required TResult Function(PaymentSuccess value) success,
    required TResult Function(PaymentError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentSuccess value)? success,
    TResult Function(PaymentError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PaymentSuccess implements PaymentState {
  const factory PaymentSuccess({required List<Payment> paymentsList}) =
      _$PaymentSuccess;

  List<Payment> get paymentsList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentSuccessCopyWith<PaymentSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentErrorCopyWith<$Res> {
  factory $PaymentErrorCopyWith(
          PaymentError value, $Res Function(PaymentError) then) =
      _$PaymentErrorCopyWithImpl<$Res>;
  $Res call({NetworkExceptions error});

  $NetworkExceptionsCopyWith<$Res> get error;
}

/// @nodoc
class _$PaymentErrorCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
    implements $PaymentErrorCopyWith<$Res> {
  _$PaymentErrorCopyWithImpl(
      PaymentError _value, $Res Function(PaymentError) _then)
      : super(_value, (v) => _then(v as PaymentError));

  @override
  PaymentError get _value => super._value as PaymentError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(PaymentError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }

  @override
  $NetworkExceptionsCopyWith<$Res> get error {
    return $NetworkExceptionsCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
class _$PaymentError implements PaymentError {
  const _$PaymentError({required this.error});

  @override
  final NetworkExceptions error;

  @override
  String toString() {
    return 'PaymentState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaymentError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $PaymentErrorCopyWith<PaymentError> get copyWith =>
      _$PaymentErrorCopyWithImpl<PaymentError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Payment> paymentsList) success,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Payment> paymentsList)? success,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PaymentLoading value) loading,
    required TResult Function(PaymentSuccess value) success,
    required TResult Function(PaymentError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentSuccess value)? success,
    TResult Function(PaymentError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PaymentError implements PaymentState {
  const factory PaymentError({required NetworkExceptions error}) =
      _$PaymentError;

  NetworkExceptions get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentErrorCopyWith<PaymentError> get copyWith =>
      throw _privateConstructorUsedError;
}
