List BMI(double wight, double heigh) {
  double Bmi;
  String result = '';
  var list = [];
  Bmi = wight / (heigh * heigh);
  if (Bmi > 25) {
    result = 'شما اضافه وزن دارید';
  } else if (Bmi >= 18.5 && Bmi <= 25) {
    result = 'شما نرمالید';
  } else {
    result = 'شما کم دارید';
  }
  return list = [Bmi, result];
}
