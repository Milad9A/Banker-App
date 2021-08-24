import 'package:banker/config/consts.dart';
import 'package:banker/config/helpers/interceptor.dart';
import 'package:banker/config/services/api_result.dart';
import 'package:banker/config/services/dio_client.dart';
import 'package:banker/config/services/network_exceptions.dart';
import 'package:banker/models/payment_model/payment_model.dart';
import 'package:banker/models/payment_model/payments_list_model.dart';
import 'package:dio/dio.dart';

class PaymentRepository {
  late DioClient dioClient;
  String _baseUrl = Consts.baseUrl;

  PaymentRepository() {
    var dio = Dio();
    dioClient = DioClient(
      _baseUrl,
      dio,
      interceptors: [
        AuthenticationInterceptor(),
      ],
    );
  }

  Future<ApiResult<List<Payment>>> getPayments() async {
    try {
      final response = await dioClient.get('/payments');

      final paymentsList = PaymentsList.fromJson({'paymentsList': response});

      return ApiResult.success(data: paymentsList.paymentsList);
    } catch (e) {
      print(e);
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
