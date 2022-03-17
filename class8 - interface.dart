void main(){
  BoyGroup bts = BoyGroup('BTS');
  GirlGroup redVelvet = GirlGroup('레드벨벳');
  IdolInterface test = IdolInterface('블랙핑크'); //abstract는 instance로 선언 못하도록 하는 장치
  //Interface class는 보통 구조적인 역할을 할 뿐 실질적인 알맹이는 없기 때문에 실수로 선언하지 못하도록 abstract를 같이 사용한다.
  
  bts.sayName();
  redVelvet.sayName();
  
  print(bts is IdolInterface); // bts는 Interface를 사용하기 때문에 참
  print(bts is BoyGroup);      // bts는 BoyGroup class로 선언되었기 때문에 참
  print(bts is GirlGroup);     // bts는 Girlgroup class와 무관하기 때문에 거짓
}

// interface : 협업하거나 아주 중요한 class 선언시 사용
abstract class IdolInterface{   //특수한 구조를 다른 class를 만들 때 강제하기 위함
  String name;         //따라서 내부 값을 대입할 필요 없음
  
  IdolInterface(
  this.name);
  
  void sayName(); //abstract를 선언시 함수 body는 삭제가능(어쩌피 다른 곳에서 해당 class는 사용 불가하므로)
}

class BoyGroup implements IdolInterface{ // class 클래스명 implements 인터페이스 클래스명
  String name;                           
  
  BoyGroup(this.name);
  
  void sayName(){
    print('제 이름은 $name 입니다.');
  }
}

class GirlGroup implements IdolInterface{
  String name;
  
  GirlGroup(this.name);
  
  void sayName(){
    print('제 이름은 $name 입니다.');
  }
}
