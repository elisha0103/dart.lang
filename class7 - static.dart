void main(){
  Employee seulgi = Employee('슬기');
  Employee chorong = Employee('초롱');
  
  seulgi.name = '코드팩토리'; //instance에 귀속된 값 혹은 변수, name 변경 시 Employee.name 사용 불가
  
  Employee.building = '오투타워'; // class에 귀속된 경우이기 때문에 Employee.building 사용가능(seulgi.building X)
  
  seulgi.printNameAndBuilding();
  
  //instance에 귀속된 경우 : 같은 class 형식을 사용해도 다 다른 값을 가질 수 있다.
  //class에 귀속된 경우 : 같은 class 형식을 사용하면 모두 같은 값을 가진다. (static 변수)
  
  
}

class Employee{
  //static은 instance에 귀속되지 않고 class에 귀속된다.
  //instance는 main 함수 내 Employee에 의해 생성된 변수 ex : Employee alba
  static String? building; // 알바생이 일하고 있는 건물
  
  String name;
  
  Employee(
  this.name);
  
  void printNameAndBuilding(){
    print('제 이름은 $name입니다.$building 건물에서 근무하고 있습니다.');
    
  }
  
  static void printBuilding(){
    print('저는 $building 건물에서 근무중입니다.');
  }
  
}
