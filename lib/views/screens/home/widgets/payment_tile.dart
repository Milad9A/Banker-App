import 'package:banker/config/consts.dart';
import 'package:banker/config/helpers/date_foramtter.dart';
import 'package:banker/config/theme/color_repository.dart';
import 'package:banker/models/payment_model/payment_model.dart';
import 'package:flutter/material.dart';

class PaymentTile extends StatelessWidget {
  const PaymentTile({
    required this.payment,
  });

  final Payment payment;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 1.0),
      leading: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
          boxShadow: [Consts.bankerBoxShadow],
        ),
        alignment: Alignment.center,
        child: Image.asset('assets/images/company_logo.png'),
      ),
      title: Text(
        payment.name,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: ColorRepository.darkBlue,
              fontWeight: FontWeight.bold,
            ),
      ),
      subtitle: Text(
        DateFormatter().getDateRepresentation(
          DateTime.parse(payment.createdAt),
        ),
        style: TextStyle(
          fontSize: 13.0,
        ),
      ),
      trailing: Text('\$${payment.amount.toString()}'),
    );
  }
}
