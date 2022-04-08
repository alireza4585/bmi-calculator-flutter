import 'package:bmi_project/constants/bmi.dart';
import 'package:bmi_project/constants/constants.dart';
import 'package:bmi_project/widgets/shap_left.dart';
import 'package:bmi_project/widgets/shap_right.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  final wightcontroller = TextEditingController();
  final heightcontroller = TextEditingController();
  double widthbad = 0;
  double widthgood = 0;
  double Bmi = 0;
  String resultbmi = '';
  var list;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'بی ام ای تو چنده؟',
          style: TextStyle(color: Background2, fontSize: 22),
        ),
      ),
      body: SafeArea(
        child: Wrap(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 130,
                      child: TextField(
                        controller: wightcontroller,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'وزن',
                            hintStyle:
                                TextStyle(color: Background1.withOpacity(0.7))),
                      ),
                    ),
                    Container(
                      width: 130,
                      child: TextField(
                        controller: heightcontroller,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'قد',
                            hintStyle:
                                TextStyle(color: Background1.withOpacity(0.7))),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                InkWell(
                  onTap: () {
                    var wight = double.parse(wightcontroller.text);
                    final heigh = double.parse(heightcontroller.text) / 100;
                    setState(() {
                      list = BMI(wight, heigh);
                      Bmi = list[0];
                      resultbmi = list[1];
                      widthbad = list[2];
                      widthgood = list[3];
                    });
                  },
                  child: Text(
                    '!محاسبه کن',
                    style: TextStyle(
                      color: Background2,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  '${Bmi.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  resultbmi,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 80),
                Shap_Left(width: widthgood),
                Shap_Right(width: widthbad),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
