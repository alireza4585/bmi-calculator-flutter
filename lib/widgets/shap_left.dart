import 'package:flutter/material.dart';

class Shap_Left extends StatelessWidget {
  final double width;
  const Shap_Left({Key? key, this.width = 0}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: width,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
            ),
            color: Colors.green,
          ),
        )
      ],
    );
  }
}
