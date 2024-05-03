import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: Container(
        child: Text(
          errMessage,
          style: Styles.textStyle18,
        ),
      ),
    );
  }
}
