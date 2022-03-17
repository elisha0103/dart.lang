void main(){
  print('---------Idol-----------');
  
  Idol apink =  Idol(name: '에이핑크', membersCount :5);
  
  apink.sayName();
  apink.sayMemberCount();
  
  BoyGroup bts = BoyGroup('BTS', 7);
  
  bts.sayMemberCount(); //bts는 부모클래스로부터 상속받은 자식클래스이므로 부모클래스의 속성 사용가능
  bts.sayName();  //constructor만 일치시켜주면 자식클래스는 부모클래스의 속성 사용가능
  
  GirlGroup redVelvet = GirlGroup('Red Velvet', 5);
  
  redVelvet.sayMemberCount();
  redVelvet.sayName();
  
  print('------------Type Comparison------------');
  //부모클래스는 자식클래스와 같지않다.
  print(apink is Idol);
  print(apink is BoyGroup);
  print(apink is GirlGroup);
  
  print('------------Type Comparison 2----------');
  //자식 클래스는 부모클래스도 될 수 있고, 본 타입이 될 수 있다.
  //자식 클래스는 다른 자식클래스와 같지 않다.
  print(bts is Idol);
  print(bts is BoyGroup);
  print(bts is GirlGroup);
}

// 상속 - inheritance
// 상속을 받으면 부모 클래스의 모든 속성을 자식 클래스가 부여받는다.

class Idol{
  String name;
  int membersCount;
  
  Idol({
    required this.name,
    required this.membersCount
  });
  
  void sayName(){
    print('저는 ${this.name}입니다.');
  }
  
  void sayMemberCount(){
    print ('${this.name}은 ${this.membersCount}명의 멤버가 있습니다.');
  }
  
  void saymale(){
    print('우리는 남자 아이돌입니다.');
    
  }
}

class BoyGroup extends Idol{ //class 자식클래스_변수명 extends 부모클래스_변수명
  BoyGroup(
  String name,              //부모클래스의 속성을 상속받아야 하기 때문에 constructor도 부모클래스와 같게 설정
  int memberCount) : super( //자식클래스로 받은 값을 부모 클래스에 전달해야하기때문에 매칭
  name : name,              //this는 같은 클래스가 아니기때문에 사용불가, super로 부모클래스라는 것을 지칭
  membersCount : memberCount);
}

class GirlGroup extends Idol{
  GirlGroup(
  String name,
  int memberCount) : super(name : name, membersCount : memberCount);
  
  void sayFemale(){
    print('우리는 여자 아이돌입니다.');
  }
}

// 부모는 자식의 속성을 쓸 수 없다.
// 자식은 서로다른 자식끼리의 속성을 쓸 수 없다.
// 오로지 부모의 속성만 자식들이 쓸 수 있다.
