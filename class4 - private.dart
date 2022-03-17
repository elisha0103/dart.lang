//private 속성 : 변수, 함수 등 앞에 선언하면 해당 파일에서만 그 private 변수를
// 사용할 수 있음. 이 파일 외부에서 해당 변수를 불러올 수 없음.
//private 속성 : _변수명 : '_'를 앞에 붙이면 private 속성 변수

void main(){
  _Idol blackPink = _Idol(
     '블랙핑크',['지수','제니','리사','로제']);
  
  
  _Idol bts = _Idol.fromList([
   ['RM','진','슈가','제이홈','지민','뷔','정국'],
    'BTS']
                );
  
  print(blackPink.firstMember);
  print(bts.firstMember);
  
  blackPink.firstMember = '코드팩토리'; // '=' 오른쪽 파라미터가 setter의 한개의 매개변수로 인식
  bts.firstMember = '아이언맨'; //따라서 꼭 한개만 입력할 수 있음
  
  print(blackPink.firstMember);
  print(bts.firstMember);
  
}
  //getter / setter
  //데이터를 가져올 때 / 데이터를 설정할 때
class _Idol{
  String name;
  List<String> members;
  
  _Idol(this.name, this.members); //아주 간결하게 저장, 타입에 맞게 저장해줘야함
  //매개인자를 this.name, this.members로 대입해준다는 뜻.
  
  _Idol.fromList(List values): this.members = values[0], this.name = values[1];
  //매개인자 2개를 모두 리스트로 받겠다.
  
  void sayHello(){
    print('안녕하세요 ${this.name}');
    
  }
  
  void introduce(){
    print('저희 멤버는 ${this.members}가 있습니다.');
  }
  
  //getter 간단한 데이터 가공을 할 때 사용하고, 함수로 같은 기능을 구현할 수 있으나 적합한 용도에 따라 사용하는 것
  String get firstMember{
    return this.members[0];
  }
  
  //setter
  set firstMember(String name){ //한개의 파라미터만 무조건 들어가야한다.
    this.members[0] = name;
  }
}
