void main() async {
  // Future - 미래
  // 미래에 받아올 값
  Future<String> name = Future.value('코드팩토리');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  final result1 = addNumbers(1, 1);
  final result2 = await addNumbers(2, 2);

  print('result1 : $result1');
  print('result2 : $result2');
  print('result1 + result2= ${result1 + result2}');
}

Future<int> addNumbers(int number1, int number2) async {
  print('계산 시작 : $number1 + $number2');

  // 서버 시뮬레이션
  await Future.delayed(Duration(seconds: 2), () {
    print('계산 완료 : $number1 + $number2 = ${number1 + number2}');
  });
  print('함수완료 : $number1 + $number2');

  return number1 + number2;
}

// await 방법 : void main(매개인자) async{body};
// await Future<int> number1 - await는 Future 변수에만 붙일 수 있다.
// await는 awiat 코드 다음부터 비동기 적용
// await를 적용 안하면 await 코드 다음코드가 실행됨. await 코드 자체만 비동기로 적용되나,
// await를 적용하면 awiat 코드 다음부터 쭉 비동기로 적용(순서대로)
// await를 적용한 코드부터 비동기로 적용되고 cpu는 메인함수에서 다음 코드를 수행함(cpu 효율적으로 사용)
// await의 반환 값은 Future값이 아니다. - 내부는 Future 기능을 적용하지만 결국 로직 순서대로 반환이 됐으므로 Future의 의미를 갖지 않음.
// Future 반환값과 await 반환 값이 서로 타입이 달라 연산이 안됨. '+'가 안됨.
