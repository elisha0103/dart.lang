void main(){
  int number = 2;
  print(number);
  print(number + 2);
  print(number - 2);
  print(number * 2);
  print(number / 2);
  
  print('-----------------');
  print(number % 3); // 나눈 후 나머지 값
  
  print('-----------------');
  
  number ++; // number = number + 1
  print(number);
  
  number --; //number  = number - 1
  print(number);
  
  double number2 = 4.0;
  
  print(number2);
  
  number2 += 1;
  print(number2);
  
  number2 -= 1;
  print(number2);
  
  number2 *= 2;
  print(number2);
  
  number2 /= 2;
  print(number2);
  
  print('------------------');
  
  
  double? number3 = 4.0;
  print(number3);
  
  number3 = 2.0;
  print(number3);
  
  number3 = null;
  print(number3);
  
  number3 ??= 3.0; // 변수가 null이면 3.0으로 저장
  print(number3);
  
  print('-------------------');
  
  int up = 1;
  int down = 2;
  
  print(up > down);
  print(up < down);
  print(up >= down);
  print(up <= down);
  print(up == down); //같다.
  print(up != down); //다르다.
  
  print('-------------------');
  //타입 비교
  int number32 = 1;
  
  print(number32 is int);
  print(number32 is String);
  
  print(number32 is! int);
  print(number32 is! String);
  
  print('-------------------');
  bool result = 12 > 10 && 1 > 0;
  // && = and, || = or
  
  print(result);
  
  bool result2 = 12 > 10 && 0 > 1;
  print(result2);
  
  bool result3 = 12 > 10 || 1 > 0;
  print(result3);
  
  bool result4 = 12 > 10 || 0 > 1;
  print(result4);
  
  bool result5 = 12 < 10 || 0 > 1;
  print(result5);
  
}
