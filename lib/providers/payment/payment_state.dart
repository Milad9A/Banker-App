part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _Initial;

  const factory PaymentState.loading() = PaymentLoading;

  const factory PaymentState.success({
    required List<Payment> paymentsList,
  }) = PaymentSuccess;

  const factory PaymentState.error({
    required NetworkExceptions error,
  }) = PaymentError;
}
