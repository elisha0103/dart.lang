void main(){
  Idol blackPink = const Idol(
  '블랙핑크',['지수','제니','리사','로제']);
  
    Idol blackPink2 = const Idol(
  '블랙핑크',['지수','제니','리사','로제']);
  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  print('-------------------------');
    print(blackPink == blackPink2); // const로 선언했을 때 두개의 변수가 같다고 함.
  /*const로 선언하지 않으면 같은 변수로 인식 안함. 같은메모리를 공유하지 않기 때문. const로
   * 선언하면 변수가 같은 constructor를 공유하기 때문에 같은 메모리를 공유, 즉 같은 변수로 작용
   * const로 선언하지 않으면 다른 메모리에 같은 매개인자 등을 저장하기 때문에 다른 변수
   */  
  Idol bts = Idol.fromList([
    ['RM','진','슈가','제이홈','지민','뷔','정국'],
    'BTS'
  ]
  );
  
  print(bts.name);
  print(bts.members);
  bts.sayHello();
  bts.introduce();
}
//Idol class
//name(이름)
//members(멤버들)
//sayHello(인사)
//introduce(멤버소개)
//constructor (생성자)
//imutable(한번 값이 선언되면 변경 불가) - final 사용
class Idol{
  final String name;
  final List<String> members;
  
  const Idol(this.name, this.members); //아주 간결하게 저장, 타입에 맞게 저장해줘야함
  //매개인자를 this.name, this.members로 대입해준다는 뜻.
  
  Idol.fromList(List values): this.members = values[0], this.name = values[1];
  //매개인자 2개를 모두 리스트로 받겠다.
  
  void sayHello(){
    print('안녕하세요 ${this.name}');
    
  }
  
  void introduce(){
    print('저희 멤버는 ${this.members}가 있습니다.');
  }
}
