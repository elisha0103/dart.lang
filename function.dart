void main(){
  addnumbers(10, 20, 30); // 함수 정의부, x y z 순서를 맞춰서 매개변수 입력
  
  addnumbers2(20,30,40);
  
  addnumbers3(x : 10, z : 40, y : 30); //named parameter 함수 선언부(순서중요하지않음)
  
  int result = addnumbers(10,20,30);
  
  int result2 = addnumbers(20,30,40);
  
  print('sum : ${result + result2}');
}
  
// 3개의 숫자 (x, y, z)를 더하고, 홀수인지 짝수인지 알려주는 함수
// parameter - 매개변수 or argument
// 함수의 parameter는 positional parameter - 순서가 중요한 파라미터
// optional parameter - 필수가 아닌 파라미터
// named parameter - 이름이 있는 파라미터(순서가 중요하지 않다.)
// arrow function - 화살표 함수
int addnumbers(int x, int y, int z){
  
  int sum = x + y + z;
  print('x : $x');
  print('y : $y');
  print('z : $z');
  
  if (sum % 2 == 0){
  print('짝수입니다.');
  
  }else{
  print('홀수입니다.');
}
  
  return sum;
}
  
addnumbers2(int x, [int y = 20, int z = 30]){ //optional parameter
  // [  ] 내 변수는 있어도 되고 없어도 되고
  // 괄호 안에 기본값을 정해줄 수 있는데, y, z에 값을 안넣으면 기본값이 변수에 저장됨.
  // optional parameter에 매개변수 값을 전해주면 기본값은 무시됨.
  int sum = x + y + z;
  
  print('x : $x');
  print('y : $y');
  print('z : $z');
    
  if (sum % 2 == 0){
  print('짝수입니다.');
  
  }else{
    print('홀수입니다.');
}
}
  
//named parameter 함수 정의부
addnumbers3({required int x, required int y, required int z}){
  //named parameter 함수에서는 required를 빼면 optional 파라미터를 사용할 수 있음
  int sum = x + y + z;
  
  print('x : $x');
  print('y : $y');
  print('z : $z');
  
    if (sum % 2 == 0){
    print('짝수입니다.');
    
  }else{
    print('홀수입니다.');
}
}
  
int arrownumbers(int x, {
            required int y,
            int z = 30
            }) => x + y + z; // 화살표가 있으면 바로 다음에 오는 값이 반환되는 값
  
