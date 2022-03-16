void main(){
  //if문
  
  int number = 2;
  
  if(number % 3 == 0){        //최초 조건
    print('값이 3의 배수입니다.');
    
  }else if(number % 3 == 1){    //조건 2 ~ n-1개
    print('나머지가 1입니다.');
  }else{                        //마지막 n번째 조건
    print('나머지가 2입니다.');
  }
  
  
  switch(number %3){
    case 0:
      print('나머지가 0입니다.');
      break;
      
    case 1:
      print('나머지가 1입니다.');
      break;
      
    default:    //마지막 switch 조건
      print('나머지가 2입니다.');
      break;
  }
}
