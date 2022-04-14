void main() async {
  // Future - 미래
  // 미래에 받아올 값
  Future<String> name = Future.value('코드팩토리');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);
  
  await addNumbers(1,1);
  await addNumbers(2,2);
}

Future<void> addNumbers(int number1, int number2) async {
  print('계산 시작 : $number1 + $number2');
  
  // 서버 시뮬레이션
  await Future.delayed(Duration(seconds:2), (){
    print('계산 완료 : $number1 + $number2 = ${number1 + number2}');
    
  });
  print('함수완료 : $number1 + $number2');
}

  // await 방법 : void main(매개인자) async{body};
  // await Future<int> number1
  // await는 awiat 코드 다음부터 비동기 적용
  // await를 적용 안하면 await 코드 다음코드가 실행됨. await 코드 자체만 비동기로 적용되나,
  // await를 적용하면 awiat 코드 다음부터 쭉 비동기로 적용(순서대로)
  // await를 적용한 코드부터 비동기로 적용되고 cpu는 메인함수에서 다음 코드를 수행함(cpu 효율적으로 사용)
