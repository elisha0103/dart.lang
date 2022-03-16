void main(){
  //List - 배열
  List<String> blackPink = ['제니','지수','로제', '리사'];
  List<int> numbers = [1,2,3,4,5,6];
  print(blackPink);
  print(numbers);
  
  //index 순서 0부터 시작
  
  print(blackPink[0]);
  print(blackPink[1]);
  print(blackPink[2]);
  print(blackPink[3]);
  
  print(blackPink.length); //List의 길이, 크기를 나타냄 .length
  
  blackPink.add('코드팩토리'); //List에 값을 추가
  
  print(blackPink);
  
  blackPink.remove('코드팩토리'); //List의 값을 제거
  
  print(blackPink);
  
  print(blackPink.indexOf('로제')); // 값이 내포된 리스트 index를 추출
}
