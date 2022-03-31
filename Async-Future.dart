void main(){
  // Futer - 미래
  // 미래에 받아올 값
  Future<String> name = Future.value('코드팩토리');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);
  
  // 2개의 파라미터
  // delayed - 지연되다.
  // 1번 파라미터 - 지연할 기간(얼마나 지연할건지) Duration
  // 2번 파라미터 - 지연 시간이 지난 후 실행할 함수
  Future.delayed(Duration(seconds : 2), (/*함수매개인자*/){
    print('Delay 끝');
  });
}

void addNumbers(int number1 , int number2){
  print('계산 시작 : $number1 + number2');
  
  //서버 시뮬레이션
  Future.delayed(Duration(seconds:2), (){
    print('계산 완료: $number1 + $number2 = ${number1 + number2}');
  });
  
  print('함수 완료');
}

/* Future은 비동기 작용을 한다.
 * CPU가 순서대로 일을 하지만 Future로 cpu가 혹여나 당장 일을 하지 못하는 상황이 발생 될 때
 * 빠른 응답속도를 위해서 바로 다음 코드로 넘어갈 수 있도록 한다.(서버로부터 응답받을 때, 일부로 delay 작업이 필요할 때 등)
 * 다음 코드가 끝나고 Future 내 코드를 실행할 수 있으면 이를 실행한다. 그러나 아직도 실행할 수 없으면
 * 다음 코드를 진행하고 Future 내 코드를 실행할 수 있으면 이를 실행 후 다시 순차적으로 진행된다.
 * 비동기 - 정해진 틀에 의해서 진행하는 것이 아니라 일을 효율적으로 작업 가능
 */
