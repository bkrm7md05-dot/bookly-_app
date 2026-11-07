import 'package:flutter/material.dart';
import 'package:project/Core/utils/styles.dart';


class CustomErrorWidget extends StatelessWidget {

  const CustomErrorWidget({required this.errMessage});
  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Text(errMessage, style: Styles.textStyle18);
  }
}
