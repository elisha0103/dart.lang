void main(){
  TimesTwo tt = TimesTwo(2);
  
  print(tt.calculate());
  
  TimesFour tf = TimesFour(2);
  
  print(tf.calculate());
  
    TimesTwo tt2 = TimesTwo(2);
  
  print(tt.calculate());
  
}

// method - function (class 내부에 있는 변수)
// override - 덮어쓰기 (우선시하다)

class TimesTwo{
  final int number;
  TimesTwo(
  this.number);
  
  //method
  int calculate(){
    return this.number * 2;
  }
}

class TimesFour extends TimesTwo{
  TimesFour(
  int number) : super(number);
  //constructor로 받은 매개변수를 부모클래스 number에 저장시켰음
  
  @override //override 명령어 '@override'
  int calculate(){
    return super.number * 4;
    //부모클래스 number에 저장된 값을 불러와서 *4를 하는 기존 함수를 자식클래스에서 가져와 수정함.
    //자식클래스에서 이름이 같은 함수를 새로 수정해서 지속 사용가능
  }
}
