import 'dart:async';

void main() {
  calculate(1).listen((val) {
    print('calculate(1) : $val');
  });
  // 위로 알 수 있는 것은, listen의 val은 stream 반환값이 입력된다는 것.
  calculate(4).listen((val) {
    print('calculate(1) : $val');
  });
  // 두개 calculate가 동시 실행되고 다음에 1초 기다리게 됨 : async 프로그램
}

Stream<int> calculate(int number) async* {
  for (int i = 0; i < 5; i++) {
    yield i * number;

    await Future.delayed(Duration(seconds: 1));
  }

  /*
   * calculate(int number) {
   for(int i = 0; i<5; i++){
   return i * number; // number * i 를 루틴마다 하고싶으나 
   return을 받으면 for 문은 바로 종료되어 루틴이 진행되지 않음
   }
   }
   */
}
