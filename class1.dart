void main(){
  Idol blackPink = Idol(
  '블랙핑크',['지수','제니','리사','로제']);
  
  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  
  Idol bts = Idol(
  'BTS',
  ['RM', '진', '슈가', '제이홈','지민','뷔','정국']);
  
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
class Idol{
String name;
  List<String> members;
  
  Idol(
  String name, List<String> members
  ) : this.name = name, this.members = members
    ;//Constructor 역할 : 외부로 매개인자 받아서 작용하는 부분
  
  void sayHello(){
    print('안녕하세요 ${this.name}');
    
  }
  
  void introduce(){
    print('저희 멤버는 ${this.members}가 있습니다.');
  }
}
