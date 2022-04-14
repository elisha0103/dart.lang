// Stream은 지속적으로 값을 받음
// 별도의 종료지시가 있기 전까지 계속 값을 반환해줌 (매번 요청을 하지 않아도 계속 값은 생산중)
import 'dart:async';

void main() {
  final controller = StreamController(); // 패키지에서 Stream controller를 꺼내옴
  final stream = controller.stream.asBroadcastStream(); // Controller를 이용해서 main 함수에서 사용할 Stream 선언
  //controller.stream - 한 개의 listen만 가능, controller.stream.asBroadcastStrea(); - 여러 개의 listen 가능

  final streamListener1 = stream.listen((val) {
    print('Listener1 : $val');
  }); // listen((val){body}) listen 함수는 body가 없음. 매개변수안에 ((변수){함수})가 있어서 매개변수인 변수가 매개변수인 함수에 적용됨.
  // listen 자체의 바디는 없다.
  final streamListener2 = stream.listen((val) {
    print('Listener2 : $val');
  });

  controller.sink.add(1); // controller에게 1이 전달됨
  // controller에 1이 전달되고 이것이 stream에 전달되고 stream.listen에 전달됨
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);

  // streamListener1는 지속적으로 값을 전달하고 있는 상태에서 controller 명령어로 값을 수정함
  // 따라서 변경된 값을 지속 출력하고 있는 상태
}
