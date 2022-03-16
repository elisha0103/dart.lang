void main(){
  //Loop
  
  //for(루프 변수선언, 루프 조건, 1회 실행시 변화)
  for(int i = 0; i < 10; i++){
    print(i);
  }
  
  int total = 0;
  
  List<int> numbers = [1,2,3,4,5,6];
  
  for(int i = 0; i< numbers.length; i++){
    total += numbers[i];
  }
  
  print(total);
  
  total = 0;
  
  for(int number in numbers){
    print(number);
  }
  // for in loop > for(루프변수선언 in 리스트) - 리스트에 있는 값들을 루프변수에 대입한다.
  // 따라서 루프조건은 리스트에 있는 인덱스만큼, 변화는 따로 없는 for loop문이 된다.
  
  for (int number in numbers){
    total += number;
  }
  
  print(total);
  
}
