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
  double widthbad = 100;
  double widthgood = 100;
  double Bmi = 0;
  String resultbmi = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'بی ام ای تو چنده؟',
          style: TextStyle(color: Colors.black, fontSize: 22),
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
                            hintStyle: TextStyle(
                                color: Colors.orange.withOpacity(0.5))),
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
                            hintStyle: TextStyle(
                                color: Colors.orange.withOpacity(0.5))),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                InkWell(
                  onTap: () {
                    final wight = double.parse(wightcontroller.text);
                    final heigh = double.parse(heightcontroller.text);
                    setState(() {
                      Bmi = wight / (heigh * heigh);
                      if (Bmi > 25) {
                        resultbmi = 'شما اضافه وزن دارید';
                      } else if (Bmi >= 18.5 && Bmi <= 25) {
                        resultbmi = 'شما نرمالید';
                      } else {
                        resultbmi = 'شما کم دارید';
                      }
                    });
                  },
                  child: Text(
                    '!محاسبه کن',
                    style: TextStyle(
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
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
