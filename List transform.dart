void main(){
  List<String> blackPink = ['로제','지수','리사','제니'];
  
  final newBlackPink = blackPink.map((x){
    return '블랙핑크 $x';
  });  // Map을 이용하여 List 값을 일괄적으로 수정하는 방법
  
  print(blackPink);
  print(newBlackPink);
  print(newBlackPink.toList());
  
  final newBlackPink2 = blackPink.map((x) => '블랙핑크 $x');
  // Arrow 함수를 사용한 함수 축약
  
  print(newBlackPink2.toList());
  
  // [1.jpb, 3.jpg, 5.jpg, 7.jpg, 9.jpg] 로 변환
  String number = '13579';
  
  //final parsed = number.split('');  // 스트링 값으 한글자씩 나눠서 List화
  
  final parsed = number.split('').map((x) => '$x.jpg').toList();
  
  print(parsed);
  }

