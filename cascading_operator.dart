void main(){
  List<int> even = [
    2, 4, 6, 8
  ];
  
  List<int> odd = [
    1, 3, 5, 7
  ];
  
  // cascading operator
  // ...
  print([even, odd]);
  print([...even, ...odd]); // 서로 다른 List를 풀어서 나타낼 수 있음
  
  print(even);
  print([...even]);
  print(even == [...even]); // even과 ..even과는 서로 다른 리스트
  //완전히 새로운 List에다가 내용물을 풀어서 다시 선언 가능
}
