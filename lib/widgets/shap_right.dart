import 'package:bmi_project/constants/constants.dart';
import 'package:flutter/material.dart';

class Shap_Right extends StatelessWidget {
  final double width;
  const Shap_Right({Key? key, this.width = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: width,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
            ),
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
