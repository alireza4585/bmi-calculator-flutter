List BMI(double wight, double heigh) {
  double Bmi;
  String result = '';
  double count = 0.01;
  double Overweight;
  double lowweight;
  double widthbad = 0;
  double widthgood = 0;
  var list = [];
  Bmi = wight / (heigh * heigh);
  if (Bmi > 25) {
    double BMi = Bmi;
    Overweight = wight;
    while (BMi >= 25) {
      Overweight -= count;
      BMi = Overweight / (heigh * heigh);
      count += 0.01;
    }
    Overweight = wight - Overweight;
    result = 'شما ${Overweight.toStringAsFixed(2)} اضافه وزن دارید';
    widthbad = Overweight + 200;
    widthgood = 100 - Overweight;
  } else if (Bmi >= 18.5 && Bmi <= 25) {
    result = 'شما نرمالید';
    widthgood = Bmi + 100;
    widthbad = Bmi + 100;
  } else {
    double BMi = Bmi;
    lowweight = wight;
    while (BMi <= 18.5) {
      lowweight += count;
      BMi = lowweight / (heigh * heigh);
      count += 0.01;
    }
    lowweight -= wight;
    result = 'شما${lowweight.toStringAsFixed(2)} کم دارید';
    widthbad = lowweight + 200;
    widthgood = 100 - lowweight;
  }

  return list = [Bmi, result, widthbad, widthgood];
}
