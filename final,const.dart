void main(){
  final String name = 'Code Factory'; // 한번 선언시 변경 불가
  
  print(name);
  
  const String name2 = 'Black Pink'; // 한번 선언시 변경 불가
  
  final name3 = 'RedVelvet'; //final, const는 타입도 생략가능(var)
  
  DateTime now = DateTime.now(); // now가 선언되는 순간의 시간이 저장됨.
  
  print(now);
  
  final DateTime now = DateTime.now();
  
  const DateTime now2 = DateTime.now(); // const는 코드 빌드 실행 당시에 값이 고정되어있어야 함.
  
  /*
   * final은 언제든 한번 선언시 변경이 불가함
   * const는 코드 빌드 전에 이미 알 수 있는 값으로 정해져있어야함.
   * DateTime.now는 코드 실행 후 알 수 있는 값이므로 const로 선언시 에러 발생
   */
  
}
