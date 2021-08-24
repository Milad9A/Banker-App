import 'package:banker/config/consts.dart';
import 'package:banker/config/theme/color_repository.dart';
import 'package:flutter/material.dart';

class BalanceContainer extends StatelessWidget {
  const BalanceContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorRepository.lightGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [Consts.bankerBoxShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total Balance',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: ColorRepository.darkBlue,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(height: 4.0),
                Text(
                  r'$200.0',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Text(
                      'Income\n\$400.0',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: ColorRepository.green,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      'Expenses\n\$200.0',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/images/total_balance_artwork.png',
            width: MediaQuery.of(context).size.width * 0.4,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
