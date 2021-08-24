import 'package:banker/config/services/network_exceptions.dart';
import 'package:banker/models/payment_model/payment_model.dart';
import 'package:banker/providers/payment/payment_bloc.dart';
import 'package:banker/views/screens/home/widgets/balance_container.dart';
import 'package:banker/views/screens/home/widgets/payment_tile.dart';
import 'package:banker/views/widgets/banker_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

Widget buildHomeScreenAuthenticatedBody({required BuildContext context}) {
  final RefreshController _refreshController = RefreshController(
    initialRefresh: false,
  );

  void _onRefresh() {
    BlocProvider.of<PaymentBloc>(context).add(GetPayments());
  }

  return BlocListener<PaymentBloc, PaymentState>(
    listener: (context, state) {
      state.maybeWhen(
        success: (List<Payment> paymentsList) {
          _refreshController.refreshCompleted();
        },
        error: (NetworkExceptions error) {
          _refreshController.refreshFailed();
        },
        orElse: () {
          _refreshController.refreshFailed();
        },
      );
    },
    child: SmartRefresher(
      controller: _refreshController,
      enablePullDown: true,
      enablePullUp: false,
      onRefresh: _onRefresh,
      header: MaterialClassicHeader(),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 10.0),
            BalanceContainer(),
            BlocBuilder<PaymentBloc, PaymentState>(
              builder: (context, state) {
                return state.maybeWhen(
                  success: (List<Payment> paymentsList) {
                    return paymentsList.isNotEmpty
                        ? ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: paymentsList.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              Payment payment = paymentsList[index];
                              return PaymentTile(payment: payment);
                            },
                          )
                        : Container(
                            padding: EdgeInsets.only(top: 100.0),
                            alignment: Alignment.center,
                            child: Text("You don't have any payments!"),
                          );
                  },
                  loading: () => Container(
                    padding: EdgeInsets.only(top: 100.0),
                    alignment: Alignment.center,
                    child: BankerCircularProgressIndicator(),
                  ),
                  orElse: () => SizedBox.shrink(),
                );
              },
            )
          ],
        ),
      ),
    ),
  );
}
