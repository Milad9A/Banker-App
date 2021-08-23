import 'package:banker/config/theme/color_repository.dart';
import 'package:flutter/material.dart';

class BankerCircularProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(ColorRepository.darkBlue),
    );
  }
}
