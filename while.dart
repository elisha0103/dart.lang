void main(){
  //while loop
  
  int total = 0;
  
  //while(조건문) - 조건문이 무한루프 돌지 않도록 신중히 선정
  while(total < 10){
    total += 1;
    
  } // 조건 비교하고 안에 내용 실행
  
  print (total);
  
  total = 0;
  
  do{
    total += 1;
  }while(total < 10); // 안에 내용 실행하고 조건 비교
  
  print(total);
  
  total = 0;
  
  while(total < 10){
    total += 1;
    if(total == 5){
      break; //Loop을 나가라
    }
  }
  print(total);
  
  for(int i = 0; i < 10; i++){
    if (i == 5){
      continue; //현재 loop, 다음 아래 코드를 실행하지않고 스킵 후 다음 loop를 실행한다.
    }
    print(i);
  }
  
  //break는 loop를 그냥 빠져나옴.
  //continue는 loop를 스킵하고 다음 loop를 실행
}
