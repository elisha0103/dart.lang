void main(){
  
  calculate(1,2, add);
  /*
   * calculate함수는 1,2 매개인자를 add에 대입해서 실행하고 따라서 1,2를 add에 넣는 효과
   */
  calculate(3,2, subtract);
  
}
  
typedef Operation(int x, int y); // Operation이라는 함수의 타입을 지정
  
void add(int x, int y){        //더하기 함수
  print ('x 더하기 y 는 ${x+y}입니다.');
}
  
void subtract(int x, int y){      //빼기 함수
  print('x 빼기 y는 ${x-y} 입니다.');
  
}
void calculate(int x, int y, Operation oper){  //int 변수 2개, Operation 함수 1개
  oper(x,y);
  /*
   * 매개인자 x, y를 Operation 타입의 oper 함수에 대입.
   * oper함수는 x,y 매개인자를 대입해서 실행
   */
  
}

void main2(){
  //typedef로 정의된 Operation은 변수 타입을 지정
  //Operation(타입) operation(변수명) = add(함수)
  //typedef는 함수를 저장할 수 있는 변수를 만들어줌
  Operation2 operation = add2;
  
  int result = operation(10, 20, 30);
  print(result);
  
  operation = subtract2;
  
  int result2 = operation(10, 20, 30);
  
  print(result2);
  
  int result3 = calculate2(30, 40, 50, add2);
  
  print(result3);
  
  int result4 = calculate2(40, 50, 60, subtract2);
  
  print(result4);
}
  
//Operation 정의부
typedef Operation2 = int Function(int x, int y, int z);
  
//더하기
  
int add2(int x, int y, int z) => x + y + z;
  
//빼기
int subtract2(int x, int y, int z) => x - y - z;
  
//계산
int calculate2(int x, int y, int z, Operation2 operation){
  return operation(x, y, z);
}
