import 'dart:async';

import 'package:banker/config/services/api_result.dart';
import 'package:banker/config/services/network_exceptions.dart';
import 'package:banker/models/payment_model/payment_model.dart';
import 'package:banker/repositories/payment_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc({
    required this.paymentRepository,
  }) : super(_Initial());

  final PaymentRepository paymentRepository;

  @override
  Stream<PaymentState> mapEventToState(
    PaymentEvent event,
  ) async* {
    if (event is GetPayments) {
      yield PaymentLoading();

      ApiResult<List<Payment>> apiResult =
          await paymentRepository.getPayments();

      apiResult.when(
        success: (List<Payment> data) {
          emit(
            PaymentSuccess(paymentsList: data),
          );
        },
        failure: (NetworkExceptions error) {
          emit(PaymentError(error: error));
        },
      );
    }
  }
}
