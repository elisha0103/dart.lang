import 'dart:async';

void main() {
  playAllStream().listen((val){
    print(val);
  });
}
Stream<int> playAllStream() async* {
  yield* calculate(1);            // yield*은 뒤 반환값이 모두 나올때까지 실행됨
                                  // 원래는 calculate(1), calculate(1000)을 한번씩 동시 실행시키고 다시 다음 순서 동시실행
                                  // aaaaa, bbbbbb로 출력 (원래는 ababababab)
  yield*calculate(1000);
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
